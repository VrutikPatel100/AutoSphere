package com.grownited.entity;

import java.security.Timestamp;
import java.text.DecimalFormat;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="CarTransactions")
public class TransactionsEntity {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer transaction_id;
//	listing_id;
//	buyer_id;
//	seller_id;
	private DecimalFormat final_price;
//	payment_mode;
//	transaction_status;
	private Timestamp completed_at;
	public Integer getTransaction_id() {
		return transaction_id;
	}
	public void setTransaction_id(Integer transaction_id) {
		this.transaction_id = transaction_id;
	}
	public DecimalFormat getFinal_price() {
		return final_price;
	}
	public void setFinal_price(DecimalFormat final_price) {
		this.final_price = final_price;
	}
	public Timestamp getCompleted_at() {
		return completed_at;
	}
	public void setCompleted_at(Timestamp completed_at) {
		this.completed_at = completed_at;
	}

	
	
}
