package com.grownited.controller.Customer;

import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import com.grownited.repository.CarListingRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.cloudinary.Cloudinary;
import com.grownited.entity.CarImageEntity;
import com.grownited.entity.CarListingEntity;
import com.grownited.repository.CarImageRepository;

@Controller
public class SpinnyController {

    

	@Autowired
	CarImageRepository carImageRepository;
	
	@Autowired
	CarListingRepository carListingRepository;

	@Autowired
	Cloudinary cloudinary;



	@GetMapping ("customer-dashboard")
	public String spinny()
	{
		return "spinny";
	}
	
	
	@GetMapping("/CustomerCarList")
	public String customerCarList(Model model){

	    List<CarListingEntity> customerCarList = carListingRepository.findAll();

	    model.addAttribute("customerCarList", customerCarList);

	    return "CustomerCarList";
	}
	
	@GetMapping("/customerViewCarListing")
	public String customerViewCarListing(@RequestParam("listingId") Integer listingId, Model model){

	    Optional<CarListingEntity> op = carListingRepository.findById(listingId);

	    if(op.isPresent()){
	        model.addAttribute("carListing", op.get());
	    }

	    return "CustomerViewCarListing"; 
	}
	
	
	

}
