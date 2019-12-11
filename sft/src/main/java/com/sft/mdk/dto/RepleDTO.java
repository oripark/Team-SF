package com.sft.mdk.dto;

public class RepleDTO {
	private int no;
	private int board_no;
	private int login_no;
	private String member_name;
	private String reple_txt;
	private String reple_date;
	public RepleDTO() {
		super();
	}
	public RepleDTO(int no, int board_no, int login_no, String member_name, String reple_txt, String reple_date) {
		super();
		this.no = no;
		this.board_no = board_no;
		this.login_no = login_no;
		this.member_name = member_name;
		this.reple_txt = reple_txt;
		this.reple_date = reple_date;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getBoard_no() {
		return board_no;
	}
	public void setBoard_no(int board_no) {
		this.board_no = board_no;
	}
	public int getLogin_no() {
		return login_no;
	}
	public void setLogin_no(int login_no) {
		this.login_no = login_no;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public String getReple_txt() {
		return reple_txt;
	}
	public void setReple_txt(String reple_txt) {
		this.reple_txt = reple_txt;
	}
	public String getReple_date() {
		return reple_date;
	}
	public void setReple_date(String reple_date) {
		this.reple_date = reple_date;
	}
	
}
