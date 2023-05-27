package com.SportyShoesWebJV17.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="purchasedshoes")
public class PurchasedShoes {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int piid; // purchased shoes record id
	private int pcid; // purchase id
	private int sid;  // shoes id
	
	public PurchasedShoes() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public PurchasedShoes(int piid, int pcid, int sid) {
		super();
		this.piid = piid;
		this.pcid = pcid;
		this.sid = sid;
	}
	
	public int getPiid() {
		return piid;
	}
	
	public void setPiid(int piid) {
		this.piid = piid;
	}
	
	public int getPcid() {
		return pcid;
	}
	
	public void setPcid(int pcid) {
		this.pcid = pcid;
	}
	
	public int getSid() {
		return sid;
	}
	
	public void setSid(int sid) {
		this.sid = sid;
	}
}
