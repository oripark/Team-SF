package com.sft.mdk.dto;

public class MemberDTO {
	private int no;
	private String member_id;
	private String member_pw;
	private String member_name;
	private String member_birth;
	private String member_postcode; 
	private String member_roadAddress;
	private String member_jibunAddress;
	private String member_extraAddress;
	private String member_detailAddress;
	private String member_phone; 
	private String member_email;
	private String member_date;
	public MemberDTO() {
		super();
	}
	public MemberDTO(int no, String member_id, String member_pw, String member_name, String member_birth,
			String member_postcode, String member_roadAddress, String member_jibunAddress, String member_extraAddress,
			String member_detailAddress, String member_phone, String member_email, String member_date) {
		super();
		this.no = no;
		this.member_id = member_id;
		this.member_pw = member_pw;
		this.member_name = member_name;
		this.member_birth = member_birth;
		this.member_postcode = member_postcode;
		this.member_roadAddress = member_roadAddress;
		this.member_jibunAddress = member_jibunAddress;
		this.member_extraAddress = member_extraAddress;
		this.member_detailAddress = member_detailAddress;
		this.member_phone = member_phone;
		this.member_email = member_email;
		this.member_date = member_date;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMember_pw() {
		return member_pw;
	}
	public void setMember_pw(String member_pw) {
		this.member_pw = member_pw;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public String getMember_birth() {
		return member_birth;
	}
	public void setMember_birth(String member_birth) {
		this.member_birth = member_birth;
	}
	public String getMember_postcode() {
		return member_postcode;
	}
	public void setMember_postcode(String member_postcode) {
		this.member_postcode = member_postcode;
	}
	public String getMember_roadAddress() {
		return member_roadAddress;
	}
	public void setMember_roadAddress(String member_roadAddress) {
		this.member_roadAddress = member_roadAddress;
	}
	public String getMember_jibunAddress() {
		return member_jibunAddress;
	}
	public void setMember_jibunAddress(String member_jibunAddress) {
		this.member_jibunAddress = member_jibunAddress;
	}
	public String getMember_extraAddress() {
		return member_extraAddress;
	}
	public void setMember_extraAddress(String member_extraAddress) {
		this.member_extraAddress = member_extraAddress;
	}
	public String getMember_detailAddress() {
		return member_detailAddress;
	}
	public void setMember_detailAddress(String member_detailAddress) {
		this.member_detailAddress = member_detailAddress;
	}
	public String getMember_phone() {
		return member_phone;
	}
	public void setMember_phone(String member_phone) {
		this.member_phone = member_phone;
	}
	public String getMember_email() {
		return member_email;
	}
	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}
	public String getMember_date() {
		return member_date;
	}
	public void setMember_date(String member_date) {
		this.member_date = member_date;
	}
}
