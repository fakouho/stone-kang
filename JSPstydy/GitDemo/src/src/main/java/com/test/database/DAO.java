package com.test.database;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.test.model.AccExerciseVO;
import com.test.model.ExerciseVO;
import com.test.model.MemberVO;
import com.test.model.SaltVO;

public class DAO {

	private SqlSessionFactory factory = MySqlSessionManager.getSqlSessionFactory();

	public int saltJoin(SaltVO vo) {
		SqlSession session = factory.openSession(true);
		int row = session.insert("salt_join", vo);
		session.close();
		return row;
	}

	public SaltVO saltLogin(SaltVO vo) {
		SqlSession session = factory.openSession();
		SaltVO result = session.selectOne("salt_login", vo);
		session.close();
		return result;
	}

	public int join(MemberVO vo) {
		// insert, update, delete 수행시 true를 적어서 auto commit 되게 할 것!
		SqlSession session = factory.openSession(true);
		int row = session.insert("mem_join", vo);
		session.close();
		return row;
	}

	public MemberVO login(MemberVO vo) {
		SqlSession session = factory.openSession();
		MemberVO result = session.selectOne("mem_login", vo);
		session.close();
		return result;
	}
	
	public int accExInput(AccExerciseVO vo) {
		SqlSession session = factory.openSession(true);
		int row = session.insert("acc_ex_input",vo);
		session.close();
		return row;
	}
	
	public ExerciseVO getExidx(ExerciseVO vo) {
		SqlSession session = factory.openSession();
		ExerciseVO result = session.selectOne("get_ex_idx", vo);
		session.close();
		return result;
	}
}
