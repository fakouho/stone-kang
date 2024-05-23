package com.smhrd.model;

public class MemberVO {
		
		// 필드명도 테이블의 column 명과 일치시키자.
		// 1. 필드
		private String email;
		private String pw;
		private String tel;
		private String address;
		public MemberVO(String email, String pw, String tel, String address) {
			this.email = email;
			this.pw = pw;
			this.tel = tel;
			this.address = address;
		}
		
		// 기본생성자
		public MemberVO() {
		}
		// 2. 메소드
		// 기본생성자, 모든 필드값을 초기화 시킬수 있는 생성자, getter, setter 메소드
		// alt shift s
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getPw() {
			return pw;
		}
		public void setPw(String pw) {
			this.pw = pw;
		}
		public String getTel() {
			return tel;
		}
		public void setTel(String tel) {
			this.tel = tel;
		}
		public String getAddress() {
			return address;
		}
		public void setAddress(String address) {
			this.address = address;
		}
}
