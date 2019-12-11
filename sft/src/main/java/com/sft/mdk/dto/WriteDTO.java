package com.sft.mdk.dto;

public class WriteDTO {
	private int no;
	private int login_no;
	private String member_name;
	private String title;
	private String contents;
	private String board_date;
	private String board_state;
	public WriteDTO() {
		super();
	}
	public WriteDTO(int no, int login_no, String member_name, String title, String contents, String board_date,
			String board_state) {
		super();
		this.no = no;
		this.login_no = login_no;
		this.member_name = member_name;
		this.title = title;
		this.contents = contents;
		this.board_date = board_date;
		this.board_state = board_state;
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
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getBoard_date() {
		return board_date;
	}
	public void setBoard_date(String board_date) {
		this.board_date = board_date;
	}
	public String getBoard_state() {
		return board_state;
	}
	public void setBoard_state(String board_state) {
		this.board_state = board_state;
	}
	
	
}
