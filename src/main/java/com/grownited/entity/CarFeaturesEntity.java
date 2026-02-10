package com.grownited.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="CarFeatures")
public class CarFeaturesEntity {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer	feature_id;
	
//		variant_id
	private String safety_features;
	private String comfort_features;
	private String entertainment_features;
	private String exterior_features;
	public Integer getFeature_id() {
		return feature_id;
	}
	public void setFeature_id(Integer feature_id) {
		this.feature_id = feature_id;
	}
	public String getSafety_features() {
		return safety_features;
	}
	public void setSafety_features(String safety_features) {
		this.safety_features = safety_features;
	}
	public String getComfort_features() {
		return comfort_features;
	}
	public void setComfort_features(String comfort_features) {
		this.comfort_features = comfort_features;
	}
	public String getEntertainment_features() {
		return entertainment_features;
	}
	public void setEntertainment_features(String entertainment_features) {
		this.entertainment_features = entertainment_features;
	}
	public String getExterior_features() {
		return exterior_features;
	}
	public void setExterior_features(String exterior_features) {
		this.exterior_features = exterior_features;
	}
	
	
	

}
