package com.everyday.onepage.classes;

import java.util.List;

public interface ClassService { 
	public int addClass(ClassVO vo);
	public int updateClass(ClassVO vo);
	public ClassVO getClass(int id);
	public List<ClassVO> getClassList();
}
