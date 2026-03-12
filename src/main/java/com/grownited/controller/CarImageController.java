package com.grownited.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import com.cloudinary.Cloudinary;
import com.grownited.entity.CarImageEntity;
import com.grownited.entity.CarModelTypeEntity;
import com.grownited.repository.CarImageRepository;
import com.grownited.repository.CarModelTypeRepository;

@Controller
public class CarImageController {

    

	@Autowired
	CarModelTypeRepository carModelTypeRepository;

	@Autowired
	Cloudinary cloudinary;
	
	@Autowired
	CarImageRepository carImageRepository;
	
	@GetMapping("/carImage")
	public String carImage(Model model) {
	List<CarModelTypeEntity> allCarModel = carModelTypeRepository.findAll();
		model.addAttribute("allCarModel",allCarModel);
		return"CarImage";
	}
	
	@PostMapping("/uploadCarImage")
	public String saveCarImage(CarImageEntity carImageEntity,MultipartFile imageURL) {
		
		
		try {

			/* System.out.println(profilePic.getOriginalFilename()); */

			Map uploadResult = cloudinary.uploader().upload(imageURL.getBytes(), null);

			String profilePicURL = uploadResult.get("secure_url").toString();

			System.out.println(profilePicURL);

			CarImageEntity carImage = new CarImageEntity();
			carImage.setImageURL(profilePicURL);

			carImageRepository.save(carImage);

		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
		carImageRepository.save(carImageEntity);
		return"AdminDashboard";	
	}
	
	@GetMapping("/listCarImage")
	public String listCarImage(Model model) {
		List<CarImageEntity> carList = carImageRepository.findAll();
		model.addAttribute("carList",carList);
		return"ListCarImage";
	}
	
	@GetMapping("/deleteCarImage")
	public String deleteCarImage(Integer imageId) {
		carImageRepository.deleteById(imageId);
		return"redirect:/listCarImage";
	}
	
	@GetMapping("/viewCarImage")
	public String viewCarImage(Integer imageId,Model model) {
	Optional<CarImageEntity> image = carImageRepository.findById(imageId);
	
	if(image.isEmpty()) {
		return"redirect:/listCarImage";
	}else {
		CarImageEntity carImage = image.get();
		model.addAttribute("carImage",carImage);
	}
		return"ViewCarImage";
	}
	
	
}
