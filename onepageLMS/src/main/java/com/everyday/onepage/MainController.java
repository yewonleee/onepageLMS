package com.everyday.onepage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.everyday.onepage.classes.ClassService;
import com.everyday.onepage.classes.ClassVO;
import com.everyday.onepage.users.UserService;
import com.everyday.onepage.users.UserVO;

@Controller
public class MainController {
	
	@Autowired
	ClassService classService;
	@Autowired
	UserService userService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String main(String t, Model model) {
		model.addAttribute("list", classService.getClassList()); //class list 나타내기
		//playlist 나타내기
		model.addAttribute("attendance", classService.getAttendanceList());//attendance list 나타내기
		return "main";
	}
	@RequestMapping(value = "/addclass", method = RequestMethod.GET)
	public String addclass() {
		return "addclass"; //마법사로 강의 생성하기 페이지 이동
	}
	
	@RequestMapping(value = "/classes", method = RequestMethod.GET) //연습용!
	public String classes() {
		
		return "class";
	}
	
	@RequestMapping(value = "/addclass_action", method = RequestMethod.GET) //class & attendance 같이 생성
	public String addclass_action(ClassVO vo) {
		if(classService.addClass(vo) == 0) //add class
			System.out.println("강의 추가 실패! ");
		else
			System.out.println("강의 추가 성공! ");
		
		if(classService.addAttendance(vo) == 0) //add attendance
			System.out.println("출석표 추가 실패! ");
		else
			System.out.println("출석표 추가 성공! "); 
		
		return "redirect:/";
	}
	
	@RequestMapping(value = "/detail/{id}", method = RequestMethod.GET)
	public String detailClass(@PathVariable("id") int id, Model model) {
		ClassVO classVO = classService.getClass(id);
		model.addAttribute("u", classVO);
		return "detail"; 
	}
	
	@RequestMapping(value = "/editform/{id}", method = RequestMethod.GET)
	public String editClass(@PathVariable("id") int id, Model model) {
		ClassVO classVO = classService.getClass(id);
		model.addAttribute("u", classVO);
		return "editclass"; 
	}
	
	@RequestMapping(value = "/editok", method = RequestMethod.POST)
	public String editClassOK(ClassVO vo) {
		if (classService.updateClass(vo) == 0)
			System.out.println("데이터 수정 실패 ");
		else
			System.out.println("데이터 수정 성공!!!");
		return "redirect:main"; //이전에 사용하던 class 페이지로 다시 넘어가도록 수정하기! 
	}
	
	@RequestMapping(value = "/attendance/{attendanceID}", method = RequestMethod.GET)
	public String attendance(@PathVariable("attendanceID") int attendanceID, Model model) {
		ClassVO classVO = classService.getAttendance(attendanceID);
		
		model.addAttribute("attendance", classVO);
		model.addAttribute("students", userService.getClassAttendanceList(classVO)); //각 class별로 수강 학생목록 리스트
		return "attendance"; 
	}
	
	/*
	@RequestMapping(value = "/editAttendance/{id}", method = RequestMethod.GET)
	public String editAttendance(@PathVariable("id") int id, Model model) {
		ClassVO classVO = classService.getClass(id);
		model.addAttribute("u", classVO);
		return "editclass"; 
	}
	
	@RequestMapping(value = "/editok", method = RequestMethod.POST)
	public String editPostOK(ClassVO vo) {
		if (classService.updateClass(vo) == 0)
			System.out.println("데이터 수정 실패 ");
		else
			System.out.println("데이터 수정 성공!!!");
		return "redirect:main";
	}
	*/
	
}
