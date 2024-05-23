package com.test.database;

import java.lang.reflect.Member;
import java.util.ArrayList;

import org.apache.ibatis.jdbc.SQL;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.test.FrontController.AccCh;
import com.test.model.AccChangeVO;
import com.test.model.AccExerciseVO;
import com.test.model.ExerciseVO;
import com.test.model.MemberVO;
import com.test.model.SaltVO;
import com.test.model.StdDataVO;

public class DAO {

	private SqlSessionFactory factory = MySqlSessionManager.getSqlSessionFactory();

	// 회원가입 시 id에 해당하는 salt값 저장
	public int saltJoin(SaltVO vo) {
		SqlSession session = factory.openSession(true);
		int row = session.insert("salt_join", vo);
		session.close();
		return row;
	}

	// 로그인 시 id에 해당하는 salt값 가져오기
	public SaltVO saltLogin(SaltVO vo) {
		SqlSession session = factory.openSession();
		SaltVO result = session.selectOne("salt_login", vo);
		session.close();
		return result;
	}

	// 회원가입
	public int join(MemberVO vo) {
		// insert, update, delete 수행시 true를 적어서 auto commit 되게 할 것!
		SqlSession session = factory.openSession(true);
		int row = session.insert("mem_join", vo);
		session.close();
		return row;
	}

	// 로그인
	public MemberVO login(MemberVO vo) {
		SqlSession session = factory.openSession();
		MemberVO result = session.selectOne("mem_login", vo);
		session.close();
		return result;
	}

	// 개인정보수정
	public void updateMem(MemberVO vo) {
		SqlSession session = factory.openSession(true);
		session.update("mem_update", vo);
		session.close();
	}

	// salt값 수정
	public void updateSalt(SaltVO vo) {
		SqlSession session = factory.openSession(true);
		session.update("salt_update", vo);
		session.close();
	}

	// 회원 탈퇴
	public void unregister(MemberVO vo) {
		SqlSession session = factory.openSession(true);
		session.delete("mem_unregister", vo);
		session.close();
	}

	// 누적 운동 입력
	public int accExInput(AccExerciseVO vo) {
		SqlSession session = factory.openSession(true);
		int row = session.insert("acc_ex_input", vo);
		session.close();
		return row;
	}

	// tb_exercise에서 운동명에 해당하는 ex_idx값 가져오기
	public ExerciseVO getExidx(ExerciseVO vo) {
		SqlSession session = factory.openSession();
		ExerciseVO result = session.selectOne("get_ex_idx", vo);
		session.close();
		return result;
	}

	// 누적 운동에서 ex_date와 ex_calories 가져오기
	public ArrayList<AccExerciseVO> getAcExData(String mem_id) {
		SqlSession session = factory.openSession();
		ArrayList<AccExerciseVO> list = new ArrayList<>(session.selectList("get_acex_data", mem_id));
		session.close();
		return list;
	}

	// mem_id에 해당하는 height 값 가져오기
	public MemberVO getHeight(String mem_id) {
		SqlSession session = factory.openSession();
		MemberVO result = session.selectOne("get_mem_height", mem_id);
		session.close();
		return result;
	}

	// 누적 신체변화량 입력
	public int accChInput(AccChangeVO vo) {
		SqlSession session = factory.openSession(true);
		int row = session.insert("acc_ch_input", vo);
		session.close();
		return row;
	}

	// 운동의 카테고리 가져오기
	public ArrayList<AccExerciseVO> getAcExCate(AccExerciseVO vo) {
		SqlSession session = factory.openSession();
		ArrayList<AccExerciseVO> list = new ArrayList<>(session.selectList("get_acex_date", vo));
		session.close();
		return list;
	}

	// DAO.java 파일에 추가
	// mem_id와 시작일부터 종료일까지의 신체 변화 데이터 가져오기
	public ArrayList<AccChangeVO> getAccChangeData(AccChangeVO vo) {
		SqlSession session = factory.openSession();
		ArrayList<AccChangeVO> list = new ArrayList<>(session.selectList("get_acch_date", vo));
		session.close();
		return list;
	}

	// 오늘 날짜의 해당월의 1일부터 오늘날짜까지의 값 가져오기
	public ArrayList<AccChangeVO> getCountDate(AccChangeVO vo) {
		SqlSession session = factory.openSession();
		ArrayList<AccChangeVO> list = new ArrayList<>(session.selectList("get_count_date", vo));
		session.close();
		return list;
	}

	// 비교페이지에 들어갈 유저의 최신 데이터 가져오기
	public MemberVO MemPhysicalData(String mem_id) {
		SqlSession session = factory.openSession();
		MemberVO result = session.selectOne("get_mem_data", mem_id);
		session.close();
		return result;
	}

	// 비교페이지에 들어갈 표준데이터 가져오기
	public StdDataVO StdPhysicalData(StdDataVO vo) {
		SqlSession session = factory.openSession();
		StdDataVO result = session.selectOne("get_std_data", vo);
		session.close();
		return result;
	}
	// 네이버 회원가입 시 이메일가져오기

	public MemberVO getMemberByEmail(String email) {
		SqlSession session = factory.openSession();
		MemberVO result = session.selectOne("get_member_by_email", email);
		session.close();
		return result;
	}
}
