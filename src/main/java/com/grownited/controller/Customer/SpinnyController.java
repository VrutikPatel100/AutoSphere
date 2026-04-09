package com.grownited.controller.Customer;

import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import com.grownited.repository.CarListingRepository;
import com.grownited.repository.CarTransactionRepository;

import jakarta.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.cloudinary.Cloudinary;
import com.grownited.entity.CarBrandEntity;
import com.grownited.entity.CarImageEntity;
import com.grownited.entity.CarListingEntity;
import com.grownited.entity.CarTransactionEntity;
import com.grownited.repository.CarBrandRepository;
import com.grownited.repository.CarImageRepository;

@Controller
public class SpinnyController {

    

	@Autowired
	CarImageRepository carImageRepository;
	
	@Autowired
	CarListingRepository carListingRepository;

	@Autowired
	Cloudinary cloudinary;
	
	@Autowired
	CarTransactionRepository carTransactionRepository;
	
	@Autowired
	CarBrandRepository carBrandRepository;
	
	



	@GetMapping ("/customer-dashboard")
	public String spinny(Model model)
	{
		List<CarImageEntity> image = carImageRepository.findAll();
		List<CarBrandEntity> brand = carBrandRepository.findAll();
		List<CarListingEntity> customerCarList = carListingRepository.findAll();
			
		model.addAttribute("image", image);
		model.addAttribute("brand",brand);
		model.addAttribute("customerCarList",customerCarList);
		return "spinny";
	}
	
	@GetMapping("Careers")
	public String Careers() {
		return"Careers";
	}

	@GetMapping("Contact")
	public String Contact() {
		return"Contact";
	}
	
	@GetMapping("Blog")
	public String blog() {
		return"Blog";
	}
	
	@GetMapping("/about")
	public String aboutPage() {
	    return "About";
	}
	@GetMapping("/qualitychecks")
	public String qualityChecks() {
	    return "QualityChecks";
	}
	
	@GetMapping("/7daystrial")
	public String daystrial() {
		return "7DaysTrial";
	}
	
	@GetMapping("fixedprice")
	public String fixedprice() {
		return "FixedPrice";
	}


	
	@GetMapping("/CustomerCarList")
	public String customerCarList(Model model){

	    List<CarListingEntity> customerCarList = carListingRepository.findAll();

	    model.addAttribute("customerCarList", customerCarList);

	    return "CustomerCarList";
	}
	
	@GetMapping("/customerViewCarListing")
	public String customerViewCarListing(Integer listingId, Model model){

	    Optional<CarListingEntity> op = carListingRepository.findById(listingId);

	    if(op.isPresent()){
	        model.addAttribute("carListing", op.get());
	    }

	    return "CustomerViewCarListing"; 
	}
	
	
	
	
//	// ⭐ BUY NOW PAGE
//	@GetMapping("/buyNow")
//	public String buyNow(@RequestParam("listingId") Integer listingId, Model model, HttpSession session) {
//
//	    // Check if user is logged in
//	    if(session.getAttribute("user") == null) {
//	        return "redirect:/login"; // redirect to login if user not in session
//	    }
//
//	    // Get car listing
//	    Optional<CarListingEntity> op = carListingRepository.findById(listingId);
//	    if(op.isPresent()) {
//	    	CarListingEntity carListingEntity = op.get();
//	        model.addAttribute("carListing", carListingEntity);
//	    } else {
//	        return "redirect:/CustomerCarList"; // fallback if car not found
//	    }
//
//	    return "buyNow";
//	}
	
	// ⭐ BUY NOW PAGE
		@GetMapping("/buyNow")
		public String buyNow(@RequestParam("listingId") Integer listingId,
		                     Model model,
		                     HttpSession session) {

		    // 🔒 Check if user logged in
		    if (session.getAttribute("user") == null) {
		        return "redirect:/login";
		    }

		    // 🚗 Fetch car by ID
		    CarListingEntity car = carListingRepository.findById(listingId).orElse(null);

		    // ❌ If car not found
		    if (car == null) {
		        return "redirect:/CustomerCarList";
		    }

		    // 📦 Send to JSP
		    model.addAttribute("carListing", car);

		    // 📄 Open JSP (IMPORTANT: path correct rakho)
		    return "buyNow";   // <-- agar tumhari JSP folder me hai
		}


		
		@PostMapping("/confirmBooking")
		public String confirmBooking(CarTransactionEntity transaction) {

		    carTransactionRepository.save(transaction);

		    return "bookingSuccess";
		}
		
		@GetMapping("/customerViewCarListing1")
		public String customerViewCarListing1(@RequestParam("listingId") Integer listingId, Model model) {

		    Optional<CarListingEntity> op = carListingRepository.findById(listingId);

		    if(op.isPresent()) {
		        model.addAttribute("carListing", op.get());
		    }

		    return "CustomerViewCarListing1"; // 🔥 aa change karo
		}


}
