package com.ballza.lunch.controller;

import java.util.List;
import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ballza.lunch.model.LunchRow;
import com.ballza.lunch.service.LunchService;

import lombok.extern.slf4j.Slf4j;


@Slf4j
@Controller
public class HomeController {
	
	private LunchService lunchService;
	
	
	public HomeController(LunchService lunchService) {
		this.lunchService = lunchService;
	}


	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		String queryString = lunchService.queryString(null);
		List<LunchRow> lunchs = lunchService.getLunchRows(queryString);

		model.addAttribute("LUNCHS", lunchs);

		return "home";
	}
	

	
}


