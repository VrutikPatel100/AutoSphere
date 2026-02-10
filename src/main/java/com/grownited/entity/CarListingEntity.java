package com.grownited.entity;

import java.time.LocalDate;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="CarListing")
public class CarListingEntity {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer listing_id;
//	seller_id
//	brand_id
//	model_id
//	variant_id
	private String city;
	private Integer kms_driven;
	private Integer year;
	private String ownership;
	private Integer price;
//	status
	private LocalDate createdAt;
	public Integer getListing_id() {
		return listing_id;
	}
	public void setListing_id(Integer listing_id) {
		this.listing_id = listing_id;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public Integer getKms_driven() {
		return kms_driven;
	}
	public void setKms_driven(Integer kms_driven) {
		this.kms_driven = kms_driven;
	}
	public Integer getYear() {
		return year;
	}
	public void setYear(Integer year) {
		this.year = year;
	}
	public String getOwnership() {
		return ownership;
	}
	public void setOwnership(String ownership) {
		this.ownership = ownership;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public LocalDate getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(LocalDate createdAt) {
		this.createdAt = createdAt;
	} 
	
	

}
