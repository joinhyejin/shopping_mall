package com.team2.main;

public class Product {
	private String name;
	private int price;
	private int quantity;

	private String photo;
	private int total;
	private String info;
	
	private String con;

	public String getCon() {
		return con;
	}

	public void setCon(String con) {
		this.con = con;
	}

	public Product(String name, int price, int quantity, String photo, int total, String info, String con) {
		super();
		this.name = name;
		this.price = price;
		this.quantity = quantity;
		this.photo = photo;
		this.total = total;
		this.info = info;
		this.con = con;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public Product(String name, int price, String photo, String info, String con) {
		super();
		this.name = name;
		this.price = price;
		this.photo = photo;
		this.info = info;
		this.con = con;
	}

	public Product(String name, int price, String photo, String info) {
		super();
		this.name = name;
		this.price = price;
		this.photo = photo;
		this.info = info;
	}

	public Product(String name, int price, int quantity, String photo, int total, String info) {
		super();
		this.name = name;
		this.price = price;
		this.quantity = quantity;
		this.photo = photo;
		this.total = total;
		this.info = info;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public Product() {
		// TODO Auto-generated constructor stub
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

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

}
