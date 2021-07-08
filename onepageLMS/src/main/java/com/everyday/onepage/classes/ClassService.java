package com.everyday.onepage.classes;

import java.util.List;

public interface ClassService { 
	public int addClass(ClassVO vo);
	public int updateClass(ClassVO vo);
	public ClassVO getClass(int id);
	public List<ClassVO> getClassList();
	//deleteClass

	
	public int addAttendance(ClassVO vo);
	public int updateAttendance(ClassVO vo);
	public ClassVO getAttendance(int attendanceID);
	public List<ClassVO> getAttendanceList();
	//deleteAttendance
}
