package com.itkezi.booksbooks.controller;

import java.util.List;
import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itkezi.booksbooks.model.NaverBookVO;
import com.itkezi.booksbooks.service.impl.NaverServiceImpl;

@RequestMapping(value = "/book")
@Controller
public class NaverController {

	private final NaverServiceImpl naverService;

	public NaverController(NaverServiceImpl naverService) {
		this.naverService = naverService;
	}
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		return "book/home";
	}

	@RequestMapping(value = "/books", method = RequestMethod.GET)
	public String getBooks(String title, Model model) {
		String queryString = naverService.queryString("BOOK", title);
		List<NaverBookVO> bookList = naverService.getNaverBook(queryString);
		model.addAttribute("BOOKS", bookList);
		return "naver/book_search";
	}
}
