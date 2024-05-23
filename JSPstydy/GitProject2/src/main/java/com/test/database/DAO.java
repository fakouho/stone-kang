package com.test.database;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.test.model.AccChangeVO;
import com.test.model.AccExerciseVO;
import com.test.model.ExerciseVO;
import com.test.model.MemberVO;
import com.test.model.SaltVO;

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
	
	// 누적 운동 입력
	public int accExInput(AccExerciseVO vo) {
		SqlSession session = factory.openSession(true);
		int row = session.insert("acc_ex_input",vo);
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
	public ArrayList<AccExerciseVO> getAcExData(String mem_id){
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
	public int accChInput(AccChangeVO vo){
		SqlSession session = factory.openSession(true);
		int row = session.insert("acc_ch_input",vo);
		session.close();
		return row;
	}
}
