package com.everyday.onepage;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String main(String t, Model model) {
		
		return "main";
	}
	@RequestMapping(value = "/addclass", method = RequestMethod.GET)
	public String addclass(String t, Model model) {
		
		return "addclass";
	}
	
	@RequestMapping(value = "/addclass_action", method = RequestMethod.GET)
	public String addclass_action() {
		
		return "main";
	}
}
