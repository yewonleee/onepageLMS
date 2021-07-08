package com.everyday.onepage.classes;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ClassDAO {
	@Autowired
	SqlSession sqlSession;
	
	public int addClass(ClassVO vo) { //class-mapper.xml 에서 Class라는 namespace의 id="addClass"가 실행됨 새로운 class 생성시
		int result = sqlSession.insert("Class.addClass", vo);
		return result;
	}
	
	public int updateClass(ClassVO vo) { //만들어진 class에서 학습 컨텐츠내용 입력할 때
		int result = sqlSession.update("Class.updateClass", vo);
		return result;
	}
	
	public ClassVO getClass(int id) { //선택한 class만 가져오기 
		ClassVO result = sqlSession.selectOne("Class.getClass", id);
		return result;
	}
	
	public List<ClassVO> getClassList() { //class list 전체 가져오기
		List<ClassVO> result = sqlSession.selectList("Class.getClassList");
		return result;
	}
	
	/*
	public int deleteCsee(int seq) {
		int result = sqlSession.delete("Csee.deleteCsee", seq);
		return result;
	}
	*/
	
	public int addAttendance(ClassVO vo) { //출석표 생성 query 실행 
		int result = sqlSession.insert("Class.addAttendance", vo);
		return result;
	}
	
	public int updateAttendance(ClassVO vo) { //만들어진 attendance 정보 수정할때 
		int result = sqlSession.update("Class.updateAttendance", vo);
		return result;
	}
	
	public ClassVO getAttendance(int attendanceID) { //선택한 출석표에 해당하는 출석 정보들 가져오기 
		ClassVO result = sqlSession.selectOne("Class.getAttendance", attendanceID);
		return result;
	}
	
	public List<ClassVO> getAttendanceList() { //출석표 list 전체 가져오기
		List<ClassVO> result = sqlSession.selectList("Class.getAttendanceList");
		return result;
	}
	
	/*
	public int deleteAttendance(int attendanceID) {
		int result = sqlSession.delete("Csee.deleteAttendance", attendanceID);
		return result;
	}
	*/

}
