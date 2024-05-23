package com.smhrd.myapp.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity // DB에 있는 Table을 표현하는 자료형
public class MemberEntity {

	// JPA 사용하기위해서 요구되는 필드
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long idx;
	
	
	@Column(unique = true)
	private String id;
	@Column(length = 200)
	private String pw;
	@Column(nullable = false)
	private String name;
	private String tel;
	
}
