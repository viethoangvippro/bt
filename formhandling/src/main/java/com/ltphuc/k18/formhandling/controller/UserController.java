package com.ltphuc.k18.formhandling.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.servlet.ModelAndView;


import com.ltphuc.k18.formhandling.model.Users;

@Controller
public class UserController {

	@ModelAttribute("signUpForm")
	public Users setSignUpForm() {
		return new Users();
	}
	@RequestMapping(value = "/user", method = RequestMethod.GET)
	public ModelAndView user() {
		Users user = new Users();

		ModelAndView modelAndView = new ModelAndView("user", "command", user);
		return modelAndView;
	}

	@RequestMapping(value = "/addUser", method = RequestMethod.POST)
	public String addUser(@ModelAttribute("SpringWeb") Users user, ModelMap model) {
		if (user.getUsername().equals("admin") && user.getPassword().equals("admin")) {
			return "home";
		} else {
			model.addAttribute("message", "Dang nhap sai");
			return "user";
		}
	}

}