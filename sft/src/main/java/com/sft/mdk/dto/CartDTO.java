package com.sft.mdk.dto;

public class CartDTO {
	private int no;
	private int login_no;
	private int cart_no;
	private String card_name;
	private String card_price;
	private int amount;
	private String image_path;
	public CartDTO() {
		super();
	}

	public CartDTO(int no, int login_no, int cart_no, String card_name, String card_price, int amount, String image_path) {
		super();
		this.no = no;
		this.login_no = login_no;
		this.cart_no = cart_no;
		this.card_name = card_name;
		this.card_price = card_price;
		this.amount = amount;
		this.image_path = image_path;
	}

	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getLogin_no() {
		return login_no;
	}
	public void setLogin_no(int login_no) {
		this.login_no = login_no;
	}
	public int getCart_no() {
		return cart_no;
	}
	public void setCart_no(int cart_no) {
		this.cart_no = cart_no;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}

	public String getCard_name() {
		return card_name;
	}

	public void setCard_name(String card_name) {
		this.card_name = card_name;
	}

	public String getCard_price() {
		return card_price;
	}

	public void setCard_price(String card_price) {
		this.card_price = card_price;
	}

	public String getImage_path() {
		return image_path;
	}

	public void setImage_path(String image_path) {
		this.image_path = image_path;
	}
}
