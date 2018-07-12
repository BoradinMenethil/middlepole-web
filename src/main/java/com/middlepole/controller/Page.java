package com.middlepole.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/page")
public class Page {
	
	//http://localhost:8182/middlepole-web/page/home.jsp
	@RequestMapping(value={"/home"}, method=RequestMethod.GET)
	public String home(ModelMap model) {
		return "home";
	}
	
	
	

}// end of class
