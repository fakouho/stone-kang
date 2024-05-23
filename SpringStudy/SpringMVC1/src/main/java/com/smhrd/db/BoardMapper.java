package com.smhrd.db;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.smhrd.model.BoardVO;

import lombok.Delegate;

// mybatis f/w 사용할 때 interface 형식으로 사용!
public interface BoardMapper {
	
	// 전체 게시글을 조회해서 결과값을 반환해주는 메소드
	public List<BoardVO> boardList();
	// BoardMapper mapper = new SqlSessionFactoryBean();
	// sql session 빌려오기, 사용하기, 반납하기, 결과값 반환하기
	// mapper.boardList();
	// 모두 SqlSessionFactorBean의 역활!!
	// 즉 spring에서 알아서 해준다.

	// 게시글 등록 메소드
	public void register(BoardVO vo);
	
	// 게시글 한 개를 조회하는 메소드
	// mybatis를 사용하는 방법
	// 1. 기존DAO방식 --> JSP/Servlet 방식
	// 2. interface 방식 --> spring f/w 사용하는 방식
	// 3. annotation 방식 --> 비교적 간단한 sql구문일때 사용권장
	// select * from board where idx = #{idx}
	@Select("select * from board where idx = #{idx}")
	public BoardVO boardContent(int idx);
	
	// @Delegate("DELETE FROM BOARD WHERE IDX =#{idx}")
	public void boardDelete(int idx);
	
	
	

}
