package com.grownited.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="CarVariant")
public class CarVariantEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer variant_id;	
//	model_id	
	private String variant_name;	
	private Integer ex_showroom_price;	
	private String mileage;	
	private String engine;	
	private String power;	
	private String torque;	
	private boolean active;	
//	fuel_type	
//	transmission	
	public Integer getVariant_id() {
		return variant_id;
	}
	public void setVariant_id(Integer variant_id) {
		this.variant_id = variant_id;
	}
	public String getVariant_name() {
		return variant_name;
	}
	public void setVariant_name(String variant_name) {
		this.variant_name = variant_name;
	}
	public Integer getEx_showroom_price() {
		return ex_showroom_price;
	}
	public void setEx_showroom_price(Integer ex_showroom_price) {
		this.ex_showroom_price = ex_showroom_price;
	}
	public String getMileage() {
		return mileage;
	}
	public void setMileage(String mileage) {
		this.mileage = mileage;
	}
	public String getEngine() {
		return engine;
	}
	public void setEngine(String engine) {
		this.engine = engine;
	}
	public String getPower() {
		return power;
	}
	public void setPower(String power) {
		this.power = power;
	}
	public String getTorque() {
		return torque;
	}
	public void setTorque(String torque) {
		this.torque = torque;
	}
	public boolean isActive() {
		return active;
	}
	public void setActive(boolean active) {
		this.active = active;
	}
	
	
}
