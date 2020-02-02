package com.cy.test.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/user/*")
public class UserController {
	
//	@Inject
	
	//로그인 폼
	@RequestMapping(value = "/loginForm", method = RequestMethod.GET)
	public String loginForm() throws Exception{
		return "/user/loginForm";
	}
	
	//회원가입 폼
	@RequestMapping(value = "/registerForm", method = RequestMethod.GET)
	public String registerForm() throws Exception{
		return "/user/registerForm";
	}
	
	
}
