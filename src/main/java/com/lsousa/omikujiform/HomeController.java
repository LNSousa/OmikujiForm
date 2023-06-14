package com.lsousa.omikujiform;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpSession;

@Controller
public class HomeController {
	@RequestMapping("/omikuji")
	public String index (HttpSession session) {
		session.invalidate();
		return "index.jsp";
	}
	
	@RequestMapping("/omikuji/show")
	public String suceess () {
		
		return "success.jsp";
	}
	
	@RequestMapping(value="/submit", method=RequestMethod.POST)
	public String submit (
			@RequestParam(value="number") String number,
			@RequestParam(value="city") String city,
			@RequestParam(value="person") String person,
			@RequestParam(value="hobby") String hobby,
			@RequestParam(value="animal") String animal,
			@RequestParam(value="comment") String comment, HttpSession session) {
		session.setAttribute("number", number);
		session.setAttribute("city", city);
		session.setAttribute("person", person);
		session.setAttribute("hobby", hobby);
		session.setAttribute("animal", animal);
		session.setAttribute("comment", comment);
		return "redirect:/omikuji/show";
	}
}
