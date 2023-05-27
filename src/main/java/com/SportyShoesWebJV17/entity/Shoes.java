package com.SportyShoesWebJV17.entity;

import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;




@Entity
@Table(name="shoes")
public class Shoes {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int sid;
	private String name;
	private int price;
	private int sizeEU;
	private String genre;
	private String type;
	private String status;
	
	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name = "sid")	
	private List<PurchasedShoes> shoes;
	
	public Shoes() {
		super();
		// TODO Auto-generated constructor stub
	}



	public Shoes(String name, int price, int sizeEU, String genre, String type, String status) {
		super();
		this.name = name;
		this.price = price;
		this.sizeEU = sizeEU;
		this.genre = genre;
		this.type = type;
		this.status = status;

	}



	public int getSid() {
		return sid;
	}



	public void setSid(int sid) {
		this.sid = sid;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public int getPrice() {
		return price;
	}



	public void setPrice(int price) {
		this.price = price;
	}



	public int getSizeEU() {
		return sizeEU;
	}



	public void setSizeEU(int sizeEU) {
		this.sizeEU = sizeEU;
	}



	public String getGenre() {
		return genre;
	}



	public void setGenre(String genre) {
		this.genre = genre;
	}



	public String getType() {
		return type;
	}



	public void setType(String type) {
		this.type = type;
	}



	public String getStatus() {
		return status;
	}



	public void setStatus(String status) {
		this.status = status;
	}



	public List<PurchasedShoes> getShoes() {
		return shoes;
	}



	public void setShoes(List<PurchasedShoes> shoes) {
		this.shoes = shoes;
	}



}