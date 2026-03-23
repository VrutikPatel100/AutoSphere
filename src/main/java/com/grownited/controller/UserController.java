package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.UserDetailEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.UserDetailRepository;
import com.grownited.repository.UserRepository;

@Controller
public class UserController {

	
	@Autowired
	UserRepository userRepository;

	@Autowired
	UserDetailRepository userDetailRepository;

	@GetMapping("listUser")
	public String listUser(Model model) {

		List<UserEntity> allUser = userRepository.findAll();
		model.addAttribute("userList", allUser);
		return "ListUser";
	
		
	}
	
	@GetMapping("viewUser")
	public String viewuser(Integer userId,Model model) {
		
	 Optional<UserEntity> opUser = 	userRepository.findById(userId);
	  Optional<UserDetailEntity> opUserDetail = userDetailRepository.findByUserId(userId);
	 if(opUser.isEmpty()) {
		 return"";
	 }else {
		 UserEntity userEntity = opUser.get();
		 UserDetailEntity userDetailEntity = opUserDetail.get();
		 model.addAttribute("user",userEntity);
		 model.addAttribute("userDetail",userDetailEntity);
	 }
	 
		return"ViewUser";
	}
	
	@GetMapping("/deleteUser")
	public String deleteUser(Integer userId) {
		userRepository.deleteById(userId);
		return"redirect:/listUser";
	}
	
	
	@GetMapping("/editUser")
	public String editUser(Integer userId, Model model) {

	    Optional<UserEntity> opUser = userRepository.findById(userId);
	    Optional<UserDetailEntity> opUserDetail = userDetailRepository.findByUserId(userId);

	    if (opUser.isPresent()) {
	        model.addAttribute("user", opUser.get());
	    }

	    if (opUserDetail.isPresent()) {
	        model.addAttribute("userDetail", opUserDetail.get());
	    }

	    return "EditUser"; // JSP/HTML page
	}

	
	@PostMapping("/updateUser")
	public String updateUser(UserEntity userEntity, UserDetailEntity userDetailEntity) {

	    // User update
	    userRepository.save(userEntity);

	    // UserDetail update
	    userDetailRepository.save(userDetailEntity);

	    return "redirect:/listUser";
	}

	

}