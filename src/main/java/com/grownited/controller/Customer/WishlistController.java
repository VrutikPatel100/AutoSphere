package com.grownited.controller.Customer;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.grownited.entity.CarListingEntity;
import com.grownited.entity.WishlistEntity;
import com.grownited.repository.CarListingRepository;
import com.grownited.repository.WishlistRepository;

@Controller
public class WishlistController {

    @Autowired
    WishlistRepository wishlistRepository;

    @Autowired
    CarListingRepository carListingRepository;

    @GetMapping("/addToWishlist")
    public String addToWishlist(@RequestParam("listingId") Integer listingId){

        CarListingEntity car = carListingRepository.findById(listingId).orElse(null);

        if(car != null){

            WishlistEntity wishlist = new WishlistEntity();

            wishlist.setCarListing(car);   // important relation

            wishlistRepository.save(wishlist);
        }

        return "redirect:/wishlist";
    }


    @GetMapping("/wishlist")
    public String wishlist(Model model){

        List<WishlistEntity> wishlist = wishlistRepository.findAll();
        model.addAttribute("wishlist", wishlist);

        return "wishlist";
    }

    @GetMapping("/removeWishlist")
    public String removeWishlist(@RequestParam("wishlistId") Integer wishlistId){

        wishlistRepository.deleteById(wishlistId);

        return "redirect:/wishlist";
    }
}
