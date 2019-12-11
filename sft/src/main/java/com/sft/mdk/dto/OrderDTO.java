package com.sft.mdk.dto;

public class OrderDTO {
	private int no;
	private int login_no;
	private int cart_no;
	private String card_name;
	private String card_price;
	private int amount;
	private String buyer_name;
	private String buyer_phone;
	private String buyer_email;
	private String recipient_name;
	private String recipient_phone;
	private String recipient_postcode;
	private String recipient_roadAddress;
	private String recipient_jibunAddress;
	private String recipient_extraAddress;
	private String recipient_detailAddress;
	private String order_memo;
	private String order_state;
	private String order_date;
	private String image_path;
	public OrderDTO() {
		super();
	}
	public OrderDTO(int no, int login_no, int cart_no, String card_name, String card_price, int amount, String buyer_name, String buyer_phone, String buyer_email, String recipient_name,
			String recipient_phone, String recipient_postcode, String recipient_roadAddress,
			String recipient_jibunAddress, String recipient_extraAddress, String recipient_detailAddress,
			String order_memo, String order_state, String order_date, String image_path) {
		super();
		this.no = no;
		this.login_no = login_no;
		this.cart_no = cart_no;
		this.card_name = card_name;
		this.card_price = card_price;
		this.amount = amount;
		this.buyer_name = buyer_name;
		this.buyer_phone = buyer_phone;
		this.buyer_email = buyer_email;
		this.recipient_name = recipient_name;
		this.recipient_phone = recipient_phone;
		this.recipient_postcode = recipient_postcode;
		this.recipient_roadAddress = recipient_roadAddress;
		this.recipient_jibunAddress = recipient_jibunAddress;
		this.recipient_extraAddress = recipient_extraAddress;
		this.recipient_detailAddress = recipient_detailAddress;
		this.order_memo = order_memo;
		this.order_state = order_state;
		this.order_date = order_date;
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
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public String getBuyer_name() {
		return buyer_name;
	}
	public void setBuyer_name(String buyer_name) {
		this.buyer_name = buyer_name;
	}
	public String getBuyer_phone() {
		return buyer_phone;
	}
	public void setBuyer_phone(String buyer_phone) {
		this.buyer_phone = buyer_phone;
	}
	public String getBuyer_email() {
		return buyer_email;
	}
	public void setBuyer_email(String buyer_email) {
		this.buyer_email = buyer_email;
	}
	public String getRecipient_name() {
		return recipient_name;
	}
	public void setRecipient_name(String recipient_name) {
		this.recipient_name = recipient_name;
	}
	public String getRecipient_phone() {
		return recipient_phone;
	}
	public void setRecipient_phone(String recipient_phone) {
		this.recipient_phone = recipient_phone;
	}
	public String getRecipient_postcode() {
		return recipient_postcode;
	}
	public void setRecipient_postcode(String recipient_postcode) {
		this.recipient_postcode = recipient_postcode;
	}
	public String getRecipient_roadAddress() {
		return recipient_roadAddress;
	}
	public void setRecipient_roadAddress(String recipient_roadAddress) {
		this.recipient_roadAddress = recipient_roadAddress;
	}
	public String getRecipient_jibunAddress() {
		return recipient_jibunAddress;
	}
	public void setRecipient_jibunAddress(String recipient_jibunAddress) {
		this.recipient_jibunAddress = recipient_jibunAddress;
	}
	public String getRecipient_extraAddress() {
		return recipient_extraAddress;
	}
	public void setRecipient_extraAddress(String recipient_extraAddress) {
		this.recipient_extraAddress = recipient_extraAddress;
	}
	public String getRecipient_detailAddress() {
		return recipient_detailAddress;
	}
	public void setRecipient_detailAddress(String recipient_detailAddress) {
		this.recipient_detailAddress = recipient_detailAddress;
	}
	public String getOrder_memo() {
		return order_memo;
	}
	public void setOrder_memo(String order_memo) {
		this.order_memo = order_memo;
	}
	public String getOrder_state() {
		return order_state;
	}
	public void setOrder_state(String order_state) {
		this.order_state = order_state;
	}
	public String getOrder_date() {
		return order_date;
	}
	public void setOrder_date(String order_date) {
		this.order_date = order_date;
	}
	public String getImage_path() {
		return image_path;
	}
	public void setImage_path(String image_path) {
		this.image_path = image_path;
	}
	
}
