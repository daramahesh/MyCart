package com.mycart.entities;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.hibernate.annotations.ForeignKey;

@Entity
public class Product {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int pId;
	
	private String pName;
	
	@Column (length = 2000)
	private String pDesc;
	
	private String pPhoto;
	
	private long pPrice;
	private int pDiscount;
	private int pQuantity;
	@ManyToOne()
	@JoinColumn(name = "category_22")
	private Category category;
	
	public Product(String pName, String pDesc, String pPhoto, int pPrice, int pDiscount, int pQuantity, Category category) {
		super();
		this.pName = pName;
		this.pDesc = pDesc;
		this.pPhoto = pPhoto;
		this.pPrice = pPrice;
		this.pDiscount = pDiscount;
		this.pQuantity = pQuantity;
		this.category = category;
	}
	public Product() {
		super();
	}
	public int getpId() {
		return pId;
	}
	public String getpName() {
		return pName;
	}
	public String getpDesc() {
		return pDesc;
	}
	public String getpPhoto() {
		return pPhoto;
	}
	public long getpPrice() {
		return pPrice;
	}
	public int getpDiscount() {
		return pDiscount;
	}
	public int getpQuantity() {
		return pQuantity;
	}
	public void setpId(int pId) {
		this.pId = pId;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public void setpDesc(String pDesc) {
		this.pDesc = pDesc;
	}
	public void setpPhoto(String pPhoto) {
		this.pPhoto = pPhoto;
	}
	public void setpPrice(long pPrice) {
		this.pPrice = pPrice;
	}
	public void setpDiscount(int pDiscount) {
		this.pDiscount = pDiscount;
	}
	public void setpQuantity(int pQuantity) {
		this.pQuantity = pQuantity;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	@Override
	public String toString() {
		return "Product [pId=" + pId + ", pName=" + pName + ", pDesc=" + pDesc + ", pPhoto=" + pPhoto + ", pPrice="
				+ pPrice + ", pDiscount=" + pDiscount + ", pQuantity=" + pQuantity + "]";
	}
	
	
}
