package com.grownited.entity;

import java.time.LocalDate;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="CarSavedListing")
public class SavedListingEntity {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer wishlist_id;
//	customer_id;
//	listing_id;
//	added_at;

	public Integer getWishlist_id() {
		return wishlist_id;
	}

	public void setWishlist_id(Integer wishlist_id) {
		this.wishlist_id = wishlist_id;
	}

	
	
}
