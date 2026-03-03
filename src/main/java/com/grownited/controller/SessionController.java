package com.grownited.controller;

import java.io.IOException;
import java.time.LocalDate;
import java.util.List;
import java.util.Optional;
import java.util.Map;

import com.grownited.repository.CarModelTypeRepository;
import com.grownited.repository.UserDetailRepository;
import com.grownited.repository.UserRepository;
import com.grownited.service.MailerService;

import jakarta.servlet.http.HttpSession;

//import org.hibernate.mapping.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.cloudinary.Cloudinary;
import com.grownited.entity.CarModelTypeEntity;
import com.grownited.entity.UserDetailEntity;
import com.grownited.entity.UserEntity;

@Controller
public class SessionController {

    private final TransactionController transactionController;

	@Autowired
	UserRepository userRepository; 

	@Autowired
	UserDetailRepository userDetailRepository;
	
	@Autowired
	CarModelTypeRepository carModelTypeRepository;

	@Autowired
	MailerService mailerService;
	
	@Autowired
	PasswordEncoder passwordEncoder;
	
	@Autowired
	Cloudinary cloudinary;


    SessionController(TransactionController transactionController) {
       this.transactionController = transactionController;
    }   
	

	
	
	@GetMapping("/signup")
	public String signup(Model model) {

	    List<CarModelTypeEntity> allCarModelType = carModelTypeRepository.findAll();
	    model.addAttribute("allCarModelType", allCarModelType);

	    return "Signup";
	}
	
//	@PostMapping("/upload")
//	public String uploadFile(@RequestParam("file") MultipartFile file) {
//	    System.out.println(file.getOriginalFilename());
//	    return "success";
//	}
	
	
	@GetMapping("/login")
	public String openLoginPage() {
		return "Login";
	}
	
	@PostMapping("/authenticate")
	public String authenticate(String email,String password,Model model,HttpSession session) {
	Optional<UserEntity> op = userRepository.findByEmail(email);
	
	if(op.isPresent()) {
		UserEntity dbUser = op.get();
		session.setAttribute("user", dbUser);
		
		if(passwordEncoder.matches(password, dbUser.getPassword())) {
//		if(dbUser.getPassword().equals(password)) { 
			if(dbUser.getRole().equals("ADMIN")) {
				return"redirect:/admin-dashboard";  //url
			}else if(dbUser.getRole().equals("CUSTOMER")) {
				return"redirect:/customer-dashboard";
			}
		}
	}
		model.addAttribute("error","Invalid Credentials");
		return"Login";
	}
	
	@GetMapping("/forgetpassword")
	public String openForgetPassword() {
		return "ForgetPassword";
	}
	
	@PostMapping("/forgot-password")
	public String forgotPassword(@RequestParam String email) {

	    // 1️⃣ Find user
	    UserEntity user = userRepository.findByemail(email);

	    if (user == null) {
	        return "Email not found";
	    }

	    // 2️⃣ Call your existing method
	    String otp = mailerService.sendForgotPasswordOtp(email);

	    // 3️⃣ Save OTP in database
	    user.setOtp(otp);
	    userRepository.save(user);

	    return "ResetPassword";
	}
	
	@PostMapping("/reset-password")
	public String resetPassword(
	        @RequestParam String email,
	        @RequestParam String otp,
	        @RequestParam String newPassword) {

	    UserEntity user = userRepository.findByemail(email);

	    if (user == null) {
	        return "User not found";
	    }

	    if (!user.getOtp().equals(otp)) {
	    	
	        return "ResetPassword";
	        
	    }

	    // Encode new password
	    String encodedPassword = passwordEncoder.encode(newPassword);
	    user.setPassword(encodedPassword);

	    // Clear OTP after use
	    user.setOtp(null);

	    userRepository.save(user);

	    return "Login";
	}
	
	@PostMapping("/register")
	public String register(UserEntity userEntity, UserDetailEntity userDetailEntity,MultipartFile profilePic) {
		
		
//		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder(); 
		
		System.out.println(userEntity.getFirstName());
		System.out.println(userEntity.getLastName());
		System.out.println("Processor => " + Runtime.getRuntime().availableProcessors());
		System.out.println(userDetailEntity.getCountry());
		System.out.println(userDetailEntity.getState());

		
		userEntity.setRole("CUSTOMER");
		userEntity.setActive(true);
		userEntity.setCreatedAt(LocalDate.now());
		
		
		//encode password
		String encodedPassword = passwordEncoder.encode(userEntity.getPassword());
		System.out.println(encodedPassword);
		
		userEntity.setPassword(encodedPassword);
		
		// file uploading
				System.out.println(profilePic.getOriginalFilename());
				
				try {
					Map map = 	cloudinary.uploader().upload(profilePic.getBytes(), null);
					String profilePicURL = map.get("secure_url").toString();
					System.out.println(profilePicURL);
					userEntity.setProfilePicURL(profilePicURL);
					
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
//		
//		try { 
//			Map  map = 	cloudinary.uploader().upload(profilepic.getBytes(), null);
//			String profilePicURL = map.get("secure_url").toString();
//			System.out.println(profilePicURL);
//			userEntity.setProfilePicURL(profilePicURL);
//			
//		} catch (IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}

		
		
		// users insert -> UserRepository
		// new -> X
		userRepository.save(userEntity);
		
		userDetailEntity.setUserId(userEntity.getUserId());
		
		userDetailEntity.setUserId(userEntity.getUserId());
		userDetailRepository.save(userDetailEntity);
		
		

		//welcome mail send 
		mailerService.sendWelcomeMail(userEntity);
		return "Login";
	}

	
	@GetMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return"Login";
	}
}
