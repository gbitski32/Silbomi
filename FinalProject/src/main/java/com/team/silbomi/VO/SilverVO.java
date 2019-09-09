package com.team.silbomi.VO;

public class SilverVO {
	
	//멤버변수
	private String silver_id;
	private String silver_name;
	private String silver_pw;
	private String gender;
	private String birth;
	private String tel;
	private String mobile;
	private String smsAgree;
	private String email_id;
	private String email_domain;
	private String emailAgree;
	private String zipcode;
	private String addr1;
	private String addr2;
	private String gps_info;
	
	//기본 생성자
	public SilverVO() {}
	
	//인자 생성자
	public SilverVO(String silver_id, String silver_name, String silver_pw, String gender, String birth, String tel,
			String mobile, String smsAgree, String email_id, String email_domain, String emailAgree, String zipcode,
			String addr1, String addr2, String gps_info) {
		this.silver_id = silver_id;
		this.silver_name = silver_name;
		this.silver_pw = silver_pw;
		this.gender = gender;
		this.birth = birth;
		this.tel = tel;
		this.mobile = mobile;
		this.smsAgree = smsAgree;
		this.email_id = email_id;
		this.email_domain = email_domain;
		this.emailAgree = emailAgree;
		this.zipcode = zipcode;
		this.addr1 = addr1;
		this.addr2 = addr2;
		this.gps_info = gps_info;
	} 
	
	
}
