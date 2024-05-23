package com.test.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.database.DAO;
import com.test.model.AccExerciseVO;
import com.test.model.ExerciseVO;
import com.test.model.MemberVO;

public class InputEx implements Command {
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		String ex_name = request.getParameter("ex_name");
		String ex_date = request.getParameter("ex_date");
		String ex_done = request.getParameter("ex_done");
		int ex_reps = Integer.parseInt(request.getParameter("ex_reps"));
		int ex_time = Integer.parseInt(request.getParameter("ex_time"));

		DAO dao = new DAO();

		// session에 저장된 mem_id를 가져옴
		MemberVO membervo = (MemberVO) request.getSession().getAttribute("member");
		String mem_id = membervo.getMem_id(); 

		ExerciseVO exercisevo = new ExerciseVO();
		
		// 운동명과 일치하는 ex_idx값을 getExid -> ExerciseMapper에서 가져옴
		exercisevo.setEx_name(ex_name);
		ExerciseVO getExidxresult = dao.getExidx(exercisevo);

		// 맞는 tb_exercise에서 ex_idx값을 가져왔다면 mem_id, ex_idx값 + 입력받은 값을 tb_accumulated_exercise에 넣어줌
		if (getExidxresult != null) {
			
			// ExerciseMapper를 통해 불러온 ex_idx값이 객체에 저장되어 있는데 getEx_idx()를 이용하여 값을 가져오고 ex_idx값에 저장
			int ex_idx = getExidxresult.getEx_idx();
			AccExerciseVO vo = new AccExerciseVO(mem_id, ex_idx, ex_date, ex_done, ex_reps, ex_time);
			int row = dao.accExInput(vo);

			if (row > 0) {
				// 성공할 경우
				return "input";
				// 맞게 입력할 경우 다시 입력?
				// 지금 session (mem_id)값을 유지하기 위해 forward 방식으로 하고 있는데
				// 이렇게 하게 된다면 주소창에 fitinput.do가 아닌 inputEx.jsp로 뜨게됨
				// 이것을 어떻게 해결해야할지 고민해야함
			} else {
				// 잘못 입력해서 실패할 경우 어딘가로 이동?
				return "input"; 
			}
		} else {
			return null;
		}
	}

}
