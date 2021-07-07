package com.everyday.onepage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.everyday.onepage.classes.ClassService;
import com.everyday.onepage.classes.ClassVO;

@Controller
public class MainController {
	
	@Autowired
	ClassService classService;
	
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String main(String t, Model model) {
		model.addAttribute("list", classService.getClassList()); //class list 나타내기
		
		return "main";
	}
	@RequestMapping(value = "/addclass", method = RequestMethod.GET)
	public String addclass() {
		return "addclass";
	}
	
	@RequestMapping(value = "/classes", method = RequestMethod.GET)
	public String classes() {
		
		return "class";
	}
	
	@RequestMapping(value = "/addclass_action", method = RequestMethod.GET)
	public String addclass_action(ClassVO vo) {
		if(classService.addClass(vo) == 0)
			System.out.println("강의 추가 실패! ");
		else
			System.out.println("강의 추가 성공! ");
		return "redirect:main";
	}
	
	@RequestMapping(value = "/detail/{id}", method = RequestMethod.GET)
	public String detail(@PathVariable("id") int id, Model model) {
		ClassVO classVO = classService.getClass(id);
		model.addAttribute("u", classVO);
		return "detail"; 
	}
	
	@RequestMapping(value = "/editform/{id}", method = RequestMethod.GET)
	public String editPost(@PathVariable("id") int id, Model model) {
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
	
}
