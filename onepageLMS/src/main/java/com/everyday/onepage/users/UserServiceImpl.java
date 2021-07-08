package com.everyday.onepage.users;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.everyday.onepage.classes.ClassVO;


@Service
public class UserServiceImpl implements UserService{
	@Autowired
	UserDAO userDAO;
	
	@Override
	public List<UserVO> getClassAttendanceList(ClassVO vo) { //class 수강하는 학생들의 리스트 리턴
		return userDAO.getClassAttendanceList(vo);
	}
}
