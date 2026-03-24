package com.grownited.controller;

import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import com.cloudinary.Cloudinary;
import com.grownited.entity.*;
import com.grownited.repository.*;
import com.grownited.entity.CarListingEntity;


@Controller
public class CarListingController {

    @Autowired
    CarListingRepository carListingRepository;

    @Autowired
    CarBrandRepository carBrandRepository;

    @Autowired
    CarModelTypeRepository carModelTypeRepository;

    @Autowired
    CarVariantRepository carVariantRepository;

    @Autowired
    UserRepository userRepository;

    @Autowired
    Cloudinary cloudinary;
    
    


    // ================== ADD PAGE ==================
    @GetMapping("/carListing")
    public String carListing(Model model) {

        model.addAttribute("allUser", userRepository.findAll());
        model.addAttribute("allCarBrand", carBrandRepository.findAll());
        model.addAttribute("allCarModel", carModelTypeRepository.findAll());
        model.addAttribute("allCarVariant", carVariantRepository.findAll());

        return "CarListing";
    }

    // ================== SAVE ==================
    @PostMapping("/saveListing")
    public String saveCarListing(CarListingEntity carListingEntity,
                                 @RequestParam("imageFile") MultipartFile file) {

        try {
            if (file != null && !file.isEmpty()) {

                Map uploadResult = cloudinary.uploader().upload(file.getBytes(), null);
                String imageUrl = uploadResult.get("secure_url").toString();

                carListingEntity.setImageURL(imageUrl);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        // Brand
        Optional<CarBrandEntity> brand =
                carBrandRepository.findById(carListingEntity.getBrandId());
        brand.ifPresent(b -> carListingEntity.setBrandName(b.getBrandName()));

        // Model
        Optional<CarModelTypeEntity> model =
                carModelTypeRepository.findById(carListingEntity.getModelId());
        model.ifPresent(m -> carListingEntity.setModelName(m.getModelName()));

        // Variant
        Optional<CarVariantEntity> variant =
                carVariantRepository.findById(carListingEntity.getVariantId());
        variant.ifPresent(v -> carListingEntity.setVariantName(v.getVariantName()));

        carListingRepository.save(carListingEntity);

        return "redirect:/allCarList";
    }


    // ================== LIST ==================
    @GetMapping("/allCarList")
    public String allCarList(Model model) {
        model.addAttribute("allCarList", carListingRepository.findAll());
        return "AllCarList";
    }

    // ================== DELETE ==================
    @GetMapping("/deleteCarListing")
    public String deleteCarListing(@RequestParam("listingId") Integer listingId) {
        carListingRepository.deleteById(listingId);
        return "redirect:/allCarList";
    }

    // ================== VIEW ==================
    @GetMapping("/viewCarListing")
    public String viewCarListing(@RequestParam("listingId") Integer listingId, Model model) {

        Optional<CarListingEntity> car =
                carListingRepository.findById(listingId);

        car.ifPresent(c -> model.addAttribute("carListing", c));

        return "ViewCarListing";
    }
    @GetMapping("/warranty")
    public String warrantyPage() {
        return "warranty";
    }

    
    

    


}
