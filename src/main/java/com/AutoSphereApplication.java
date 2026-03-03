package com;

import java.util.HashMap;
import java.util.Map;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.cloudinary.Cloudinary;

@SpringBootApplication
public class AutoSphereApplication {

	public static void main(String[] args) {
		SpringApplication.run(AutoSphereApplication.class, args);
	}
	
//	create singleton -- PasswordEncoder bean
	@Bean
	PasswordEncoder	getPasswordEncoder(){
		return new BCryptPasswordEncoder();
	}
	
//	@Bean => cloudinary singleton
		
	@Bean
        Cloudinary getCloudinary() {
        Map<String, String> config = new HashMap<>();
        config.put("cloud_name", "duu7ftllm");
        config.put("api_key", "156984418265723");
        config.put("api_secret", "TbF_faVgz6dLqtzRI-e2j_aZoFU");
        return new Cloudinary(config);
    }
}
