package com.grownited.controller;

import com.cloudinary.utils.ObjectUtils;
import java.util.Map;
import java.io.IOException;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import com.cloudinary.Cloudinary;
import com.grownited.entity.UserDetailEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.UserDetailRepository;
import com.grownited.repository.UserRepository;



@Controller
public class UserController {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private UserDetailRepository userDetailRepository;

    @Autowired
    private BCryptPasswordEncoder passwordEncoder;
    
    @Autowired
    private Cloudinary cloudinary;

    // ---------- Helper for Cloudinary upload (adjust to your actual implementation) ----------
    private String uploadToCloudinary(MultipartFile file) throws IOException {

        Map uploadResult = cloudinary.uploader().upload(file.getBytes(), ObjectUtils.emptyMap());

        return uploadResult.get("secure_url").toString();
    }

    // ----------------------------------------------------------------------------------------

    @GetMapping("listUser")
    public String listUser(Model model) {
        model.addAttribute("userList", userRepository.findAll());
        return "ListUser";
    }

    @GetMapping("viewUser")
    public String viewUser(@RequestParam Integer userId, Model model) {
        Optional<UserEntity> opUser = userRepository.findById(userId);
        List<UserDetailEntity> userDetails = userDetailRepository.findByUserId(userId);
        if (opUser.isEmpty()) {
            return "redirect:/listUser";
        }
        model.addAttribute("user", opUser.get());
        if (!userDetails.isEmpty()) {
            model.addAttribute("userDetail", userDetails.get(0));
        }
        return "ViewUser";
    }

    @GetMapping("editUser")
    public String editUser(@RequestParam Integer userId, Model model) {
        Optional<UserEntity> opUser = userRepository.findById(userId);
        List<UserDetailEntity> userDetails = userDetailRepository.findByUserId(userId);
        if (opUser.isEmpty()) {
            return "redirect:/listUser";
        }
        model.addAttribute("user", opUser.get());
        if (!userDetails.isEmpty()) {
            model.addAttribute("userDetail", userDetails.get(0));
        }
        return "EditUser";
    }

    @PostMapping("updateUser")
    public String updateUser(@ModelAttribute UserEntity userEntity,
                             @ModelAttribute UserDetailEntity userDetailEntity,
                             @RequestParam(value = "profilePic", required = false) MultipartFile profilePic,
                             Model model) {

        // 1. Fetch existing user from DB
        Optional<UserEntity> existingUserOpt = userRepository.findById(userEntity.getUserId());
        if (existingUserOpt.isEmpty()) {
            return "redirect:/listUser";
        }
        UserEntity existingUser = existingUserOpt.get();

        // 2. Update basic fields (excluding password and profile pic for now)
        existingUser.setFirstName(userEntity.getFirstName());
        existingUser.setLastName(userEntity.getLastName());
        existingUser.setEmail(userEntity.getEmail());
        existingUser.setRole(userEntity.getRole());        // Now "admin" or "CUSTOMER"
        existingUser.setGender(userEntity.getGender());
        existingUser.setBirthYear(userEntity.getBirthYear());
        existingUser.setContactNum(userEntity.getContactNum());
        existingUser.setActive(userEntity.getActive());
        existingUser.setCreatedAt(userEntity.getCreatedAt());

        // 3. Update password only if a new one was provided
        if (userEntity.getPassword() != null && !userEntity.getPassword().trim().isEmpty()) {
            existingUser.setPassword(passwordEncoder.encode(userEntity.getPassword()));
        }
        // else keep existing password

        // 4. Handle profile picture upload
        if (profilePic != null && !profilePic.isEmpty()) {
            try {
                String imageUrl = uploadToCloudinary(profilePic);
                existingUser.setProfilePicURL(imageUrl);
            } catch (IOException e) {
                e.printStackTrace();
                model.addAttribute("error", "Failed to upload profile picture");
                return "EditUser";
            }
        }

        // 5. Save updated user
        userRepository.save(existingUser);

        // 6. Handle UserDetailEntity (preserve existing details)
        List<UserDetailEntity> details = userDetailRepository.findByUserId(existingUser.getUserId());
        if (!details.isEmpty()) {
            UserDetailEntity existingDetail = details.get(0);
            // Update only fields that are present in the form (hidden fields carry values)
            if (userDetailEntity.getQualification() != null) existingDetail.setQualification(userDetailEntity.getQualification());
            if (userDetailEntity.getCity() != null) existingDetail.setCity(userDetailEntity.getCity());
            if (userDetailEntity.getState() != null) existingDetail.setState(userDetailEntity.getState());
            if (userDetailEntity.getCountry() != null) existingDetail.setCountry(userDetailEntity.getCountry());
            if (userDetailEntity.getUserTypeId() != null) existingDetail.setUserTypeId(userDetailEntity.getUserTypeId());
            userDetailRepository.save(existingDetail);
        } else {
            // No existing detail – create a new one only if at least one field is provided
            if (userDetailEntity.getQualification() != null || userDetailEntity.getCity() != null ||
                userDetailEntity.getState() != null || userDetailEntity.getCountry() != null ||
                userDetailEntity.getUserTypeId() != null) {
                userDetailEntity.setUserId(existingUser.getUserId());
                userDetailRepository.save(userDetailEntity);
            }
        }

        return "redirect:/listUser";
    }

    @GetMapping("deleteUser")
    public String deleteUser(@RequestParam Integer userId) {
        userRepository.deleteById(userId);
        return "redirect:/listUser";
    }
}