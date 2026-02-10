package com.grownited.entity;

import java.time.LocalDate;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="CarOffer")
public class OfferEntity {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer offer_id;
//	listing_id;
//	buyer_id;
	private Number offered_price;
//	offer_status;
	private LocalDate created_at;
	public Integer getOffer_id() {
		return offer_id;
	}
	public void setOffer_id(Integer offer_id) {
		this.offer_id = offer_id;
	}
	public Number getOffered_price() {
		return offered_price;
	}
	public void setOffered_price(Number offered_price) {
		this.offered_price = offered_price;
	}
	public LocalDate getCreated_at() {
		return created_at;
	}
	public void setCreated_at(LocalDate created_at) {
		this.created_at = created_at;
	}	
	
	
	
}
