package com.team.silbomi.VO;

public class MemberVO {
<<<<<<< HEAD
	
	//멤버변수
	private String user_id ;
	private String user_name;
	private String user_pw;
	private int user_type;
	private String silver_id;
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
	
	//기본생성자
	public MemberVO() {}

	//인자생성자
	public MemberVO(String user_id, String user_name, String user_pw, int user_type, String silver_id, String gender,
			String birth, String tel, String mobile, String smsAgree, String email_id, String email_domain,
			String emailAgree, String zipcode, String addr1, String addr2) {
		this.user_id = user_id;
		this.user_name = user_name;
		this.user_pw = user_pw;
		this.user_type = user_type;
		this.silver_id = silver_id;
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
	}

	//getter / setter
	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_pw() {
		return user_pw;
	}

	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}

	public int getUser_type() {
		return user_type;
	}

	public void setUser_type(int user_type) {
		this.user_type = user_type;
	}

	public String getSilver_id() {
		return silver_id;
	}

	public void setSilver_id(String silver_id) {
		this.silver_id = silver_id;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getSmsAgree() {
		return smsAgree;
	}

	public void setSmsAgree(String smsAgree) {
		this.smsAgree = smsAgree;
	}

	public String getEmail_id() {
		return email_id;
	}

	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}

	public String getEmail_domain() {
		return email_domain;
	}

	public void setEmail_domain(String email_domain) {
		this.email_domain = email_domain;
	}

	public String getEmailAgree() {
		return emailAgree;
	}

	public void setEmailAgree(String emailAgree) {
		this.emailAgree = emailAgree;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getAddr1() {
		return addr1;
	}

	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}

	public String getAddr2() {
		return addr2;
	}

	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}
	
	
}
=======
	private String user_id;
	private String user_name;
	private String user_pw;
	private int user_type;
	private String silver_id;
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

	public MemberVO() {
	}

	public MemberVO(String user_id, String user_name, String user_pw, int user_type, String silver_id, String gender,
			String birth, String tel, String mobile, String smsAgree, String email_id, String email_domain,
			String emailAgree, String zipcode, String addr1, String addr2) {
		this.user_id = user_id;
		this.user_name = user_name;
		this.user_pw = user_pw;
		this.user_type = user_type;
		this.silver_id = silver_id;
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
	}

	public String getUser_id() {
		return this.user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_name() {
		return this.user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_pw() {
		return this.user_pw;
	}

	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}

	public int getUser_type() {
		return this.user_type;
	}

	public void setUser_type(int user_type) {
		this.user_type = user_type;
	}

	public String getSilver_id() {
		return this.silver_id;
	}

	public void setSilver_id(String silver_id) {
		this.silver_id = silver_id;
	}

	public String getGender() {
		return this.gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getBirth() {
		return this.birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getTel() {
		return this.tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getMobile() {
		return this.mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getSmsAgree() {
		return this.smsAgree;
	}

	public void setSmsAgree(String smsAgree) {
		this.smsAgree = smsAgree;
	}

	public String getEmail_id() {
		return this.email_id;
	}

	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}

	public String getEmail_domain() {
		return this.email_domain;
	}

	public void setEmail_domain(String email_domain) {
		this.email_domain = email_domain;
	}

	public String getEmailAgree() {
		return this.emailAgree;
	}

	public void setEmailAgree(String emailAgree) {
		this.emailAgree = emailAgree;
	}

	public String getZipcode() {
		return this.zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getAddr1() {
		return this.addr1;
	}

	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}

	public String getAddr2() {
		return this.addr2;
	}

	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}
}
>>>>>>> refs/remotes/origin/master
