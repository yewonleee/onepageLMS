package com.everyday.onepage.users;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.everyday.onepage.classes.ClassVO;

@Repository
public class UserDAO {
	@Autowired
	SqlSession sqlSession;
	
	public List<UserVO> getClassAttendanceList(ClassVO vo) { // 해당 class에 등록된 학생들의 정보 가져오기
		List<UserVO> result = sqlSession.selectList("Users.getClassAttendanceList", vo);
		return result;
	}

}
