package com.grownited.controller;

import java.util.List;
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

    private final SessionController sessionController;

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


    CarListingController(SessionController sessionController) {
        this.sessionController = sessionController;
    }
    
    


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
    public String saveCarList(CarListingEntity carListingEntity,
                             @RequestParam("imageFile") MultipartFile file) {

        try {
            Map uploadResult = cloudinary.uploader().upload(file.getBytes(), null);
            String imageUrl = uploadResult.get("secure_url").toString();
            carListingEntity.setImageURL(imageUrl);
        } catch (Exception e) {
            e.printStackTrace();
        }

        // IMPORTANT: First get the model to fetch body_type
        if (carListingEntity.getModelId() != null) {
            Optional<CarModelTypeEntity> modelOpt = carModelTypeRepository.findById(carListingEntity.getModelId());
            if (modelOpt.isPresent()) {
                CarModelTypeEntity model = modelOpt.get();
                carListingEntity.setModelName(model.getModelName());
                
                // CRITICAL: Set body_type from CarModelType
                String bodyType = model.getBodyType();
                if (bodyType != null && !bodyType.isEmpty()) {
                    carListingEntity.setBodyType(bodyType.toUpperCase()); // Store in uppercase for consistency
                    System.out.println("Body type set from model: " + bodyType);
                } else {
                    carListingEntity.setBodyType("UNKNOWN");
                    System.out.println("Model had no body type, set default: UNKNOWN");
                }
            }
        }

        // Set brand name
        if (carListingEntity.getBrandId() != null) {
            Optional<CarBrandEntity> brandOpt = carBrandRepository.findById(carListingEntity.getBrandId());
            if (brandOpt.isPresent()) {
                carListingEntity.setBrandName(brandOpt.get().getBrandName());
            }
        }

        // Set variant name
        if (carListingEntity.getVariantId() != null) {
            Optional<CarVariantEntity> variantOpt = carVariantRepository.findById(carListingEntity.getVariantId());
            if (variantOpt.isPresent()) {
                carListingEntity.setVariantName(variantOpt.get().getVariantName());
            }
        }

        // Final fallback
        if (carListingEntity.getBodyType() == null || carListingEntity.getBodyType().isEmpty()) {
            carListingEntity.setBodyType("UNKNOWN");
        }

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

    @GetMapping("/cars-by-brand")
    public String getCarsByBrand(@RequestParam("brand") String brand, Model model) {

        List<CarListingEntity> cars = carListingRepository.findByBrandNameIgnoreCase(brand);

        model.addAttribute("cars", cars);
        model.addAttribute("brand", brand);

        return "carsByBrand";
    }
     
    @GetMapping("/car-details")
    public String carDetails(@RequestParam("id") Integer id, Model model) {

        CarListingEntity car = carListingRepository.findById(id).orElse(null);

        model.addAttribute("car", car);

        return "CustomerViewCarListing"; // JSP name
    }
    
    @GetMapping("/car/{id}")
    public String carDetailsById(@PathVariable Integer id, Model model) {

        Optional<CarListingEntity> car = carListingRepository.findById(id);

        if (car.isPresent()) {
            model.addAttribute("car", car.get());
            return "carDetails";
        } else {
            return "notfound";
        }
    }
    @GetMapping("/search")
    @ResponseBody
    public List<CarListingEntity> searchCars(@RequestParam("keyword") String keyword) {

        try {

            if (keyword == null || keyword.trim().isEmpty()) {
                return List.of();
            }

            return carListingRepository
                .findByModelNameContainingIgnoreCaseOrVariantNameContainingIgnoreCaseOrBrandNameContainingIgnoreCase(
                    keyword, keyword, keyword);

        } catch (Exception e) {
            e.printStackTrace(); // 🔥 console ma error dekhashe
            return List.of(); // 🔥 ALWAYS JSON return
        }
    }
    
    
    @GetMapping("/editCarListing")
    public String editCarListing(@RequestParam("listingId") Integer listingId, Model model) {

        Optional<CarListingEntity> car = carListingRepository.findById(listingId);

        model.addAttribute("carListing", car.get());

        model.addAttribute("allUser", userRepository.findAll());
        model.addAttribute("allCarBrand", carBrandRepository.findAll());
        model.addAttribute("allCarModel", carModelTypeRepository.findAll());
        model.addAttribute("allCarVariant", carVariantRepository.findAll());

        return "EditCarListing";
    }

    
    @PostMapping("/updateCarListing")
    public String updateCarListing(CarListingEntity carListingEntity,
                                   @RequestParam("imageFile") MultipartFile file) {

        try {
            // Existing record fetch
            CarListingEntity existingCar =
                    carListingRepository.findById(carListingEntity.getListingId()).orElse(null);

            if (existingCar == null) {
                return "redirect:/allCarList";
            }

            // Image update (optional)
            if (file != null && !file.isEmpty()) {

                Map uploadResult = cloudinary.uploader().upload(file.getBytes(), null);
                String imageUrl = uploadResult.get("secure_url").toString();

                carListingEntity.setImageURL(imageUrl);
            } else {
                carListingEntity.setImageURL(existingCar.getImageURL());
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

    
    
    



    
    
}
