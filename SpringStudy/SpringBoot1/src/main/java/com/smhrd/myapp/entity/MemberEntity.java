package com.smhrd.myapp.entity;

import com.smhrd.myapp.vo.MemberVO;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
//Entity 어노테이션이 안나오면 jpa라이브러리를 안가져온것
@Entity // Table을 표현하는 자료형
public class MemberEntity {
	
	public MemberEntity(MemberVO vo) {
		this.id =vo.getId();
		this.pw =vo.getPw();
		this.name =vo.getName();
		this.tel =vo.getTel();
		
	}
	@Id // pk
	@GeneratedValue(strategy = GenerationType.IDENTITY) //오토인크리먼트잡아주는거
	private Long idx;
	//JPA쓰려면 필수!!
	
	@Column(unique = true)
	private String id;
	@Column(length = 200)
	private String pw;
	
	@Column(nullable = false)
	private String name;
	private String tel;

}
