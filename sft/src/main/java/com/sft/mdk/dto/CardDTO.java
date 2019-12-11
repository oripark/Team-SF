package com.sft.mdk.dto;

public class CardDTO {
	private int no;
	private String card_name;
	private String category;
	private String card_price;
	private String image_path;
	private int start;
	private int end;
	private String detail_image_path_1;
	private String detail_image_path_2;
	private String detail_image_path_3;
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getCard_name() {
		return card_name;
	}
	public void setCard_name(String card_name) {
		this.card_name = card_name;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
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
	public CardDTO() {
		super();
	}
	public CardDTO(String card_name, String category, String card_price, String image_path) {
		super();
		this.card_name = card_name;
		this.category = category;
		this.card_price = card_price;
		this.image_path = image_path;
	}
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}
	public String getDetail_image_path_1() {
		return detail_image_path_1;
	}
	public void setDetail_image_path_1(String detail_image_path_1) {
		this.detail_image_path_1 = detail_image_path_1;
	}
	public String getDetail_image_path_2() {
		return detail_image_path_2;
	}
	public void setDetail_image_path_2(String detail_image_path_2) {
		this.detail_image_path_2 = detail_image_path_2;
	}
	public String getDetail_image_path_3() {
		return detail_image_path_3;
	}
	public void setDetail_image_path_3(String detail_image_path_3) {
		this.detail_image_path_3 = detail_image_path_3;
	}
	
}
