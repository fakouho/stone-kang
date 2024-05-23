package com.smhrd.database;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.model.MemberVO;

public class DAO {

	// Data Access Object
	// 데이터에 접급하는 객체
	
	// 1. 필드
	// DBCP 꺼내오기
	// factory == Connection 객체들을 가지고 있는 공간
	private SqlSessionFactory factory = MySqlSesstionManager.getSqlSessionFactory();
	
	public int join(MemberVO vo) {
	
		// 1. 연결객체 빌려오기
		SqlSession session = factory.openSession(true);
		// 2. 연결객체 사용하기
		// 공통
		// 매개변수 한개 >> Mapper파일의 sql구문 id값
		// 매개변수 두개 >> id값, 보내줘야하는 데이터
		// session.insert() : insert구문
		// session.delete() : delete구문
		// session.update()	: update구문
		// session.selcetOne() :select구문,가져올 데이터 한 개일떄
		// session.selcetList() :select구문, 가져올 데이터가 여러 개
		int row = session.insert("join", vo);
		// 3. 연결객체 반납하기
		session.close();
		
		return row;
	}

	public MemberVO login(MemberVO vo) {
		
		// 1. 연결객체 빌려오기
		SqlSession session=factory.openSession();
		// 2. 연결객체 사용하기 >> select >> 데이터가 한개
		MemberVO resultVo=session.selectOne("login", vo);
		//--> 셀렉트 기능을 수행하고 난 결과 자료형은 제네릭 기법으로 결정된다
		// 제네릭 기법이란?
		// 클래스 내부(SqlSeesion)에서 사용해야하는 자료형을 클래수 외부(DAO)에서 결정하는 기법
		
		// 3. 연결객체 반납하기
		session.close();
		// 4. 결과값 반환
		return resultVo;
	}

	public List<MemberVO> selectAll() {
		// 1. 연결객체 생성하기
		SqlSession session=factory.openSession(true);
		// 2. 연격객체 사용하기
		List<MemberVO> resultList=session.selectList("SelectAll");
		//MemboerVO --> 회원 1명에 대한 정보
		// 우리가 필요한건? 회원 여러명에 대한 정보 -> 몇명일지 알수 없다.
		//MemberVO 하나로 묶어서 표현하는 자료구조 중에 가변적인 List
		//List란 ArrayList의 상위 클래스 더추상적인 클래스
		
		// 3. 연결객체 반납하기
		session.close();
		// 4. 결과값 반환하기
		return resultList;
	}

	
	
	

	
	
	
	
	
	
	
	
	
	
}
