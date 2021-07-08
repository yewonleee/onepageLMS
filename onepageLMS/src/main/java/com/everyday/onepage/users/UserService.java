package com.everyday.onepage.users;

import java.util.List;

import com.everyday.onepage.classes.ClassVO;

public interface UserService {
	public List<UserVO> getClassAttendanceList(ClassVO vo);

}
