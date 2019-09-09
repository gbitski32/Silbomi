package com.team.silbomi.VO;

import java.sql.Date;

public class TestBoardVO {
	
	//멤버변수
	private int idx;
	private String title;
	private String contents;
	private java.sql.Date regidate;
	
	//기본 생성자
	public TestBoardVO() {}

	//인자 생성자
	public TestBoardVO(int idx, String title, String contents, Date regidate) {
		super();
		this.idx = idx;
		this.title = title;
		this.contents = contents;
		this.regidate = regidate;
	}
	
	//getter/setter
	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
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

	public java.sql.Date getRegidate() {
		return regidate;
	}

	public void setRegidate(java.sql.Date regidate) {
		this.regidate = regidate;
	}
	
	
}
