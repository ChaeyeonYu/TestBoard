package com.cy.test.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/reservation/*")
public class ReservationController {
	
	//예약하기 폼
	@RequestMapping(value = "/reservationForm", method = RequestMethod.GET)
	public String reservationForm() throws Exception{
		return "/user/reservationForm";
	}
	
}
