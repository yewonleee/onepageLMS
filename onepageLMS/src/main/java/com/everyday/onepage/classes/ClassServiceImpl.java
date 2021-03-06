package com.everyday.onepage.classes;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ClassServiceImpl implements ClassService{
	@Autowired
	ClassDAO classDAO;
	
	@Override
	public int addClass(ClassVO vo) {
		return classDAO.addClass(vo);
	}
	
	@Override
	public int updateClass(ClassVO vo) {
		return classDAO.updateClass(vo);
	}
	
	@Override
	public ClassVO getClass(int id) {
		return classDAO.getClass(id);
	}
	
	@Override
	public List<ClassVO> getClassList() {
		return classDAO.getClassList();
	}
	
	//delete class
	
	@Override
	public int addAttendance(ClassVO vo) {
		return classDAO.addAttendance(vo);
	}
	
	@Override
	public int updateAttendance(ClassVO vo) {
		return classDAO.updateAttendance(vo);
	}
	
	@Override
	public ClassVO getAttendance(int attendanceID) {
		return classDAO.getAttendance(attendanceID);
	}
	
	@Override
	public List<ClassVO> getAttendanceList() {
		return classDAO.getAttendanceList();
	}
	
	//delete Attendance
}
