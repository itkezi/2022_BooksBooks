package com.itkezi.letterbunker.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itkezi.letterbunker.service.NaverService;
import com.itkezi.letterbunker.model.NaverVO;

@RequestMapping(value="/book")
@Controller
public class BookController {
	
	private final NaverService naverService;
	
	public BookController(NaverService naverService) {
		this.naverService = naverService;
	}
	
//	// localhost:8080/naver/books라고 요청
//	@RequestMapping(value={"/",""}  )
//	public String home() {
//		/*
//		 * return "문자열" 형식은
//		 * 명시적으로 어떤 jsp 파일을 rendering 할 것인지
//		 * 알려주는 것이다
//		 * 현재 method 를 요청한 URL 에 대하여 jsp 을 
//		 * 명시적으로 전달한다
//		 */
//		return "redirect:/books/list";
//	}
	
//	@RequestMapping(value="/insert", method=RequestMethod.GET)
//	public String getBooks(String title, Model model){
//		String queryString = naverService.queryString("BOOK", title);
//		List<NaverVO> bookList = naverService.getNaver(queryString);
//		model.addAttribute("BOOKS", bookList);
//		return "book/insert";
//	}
	
	@RequestMapping(value="/naver", method=RequestMethod.GET)
	public String book_search(String title, Model model) {
		
		String queryString = naverService.queryString("BOOK", title);
		List<NaverVO> bookList = naverService.getNaver(queryString);
		model.addAttribute("BOOKS", bookList);
		
		return "book/insert";
	}
	
	@RequestMapping(value="/insert", method=RequestMethod.GET)
	public String getBooks(){
		return "book/insert";
	}
	
	

}
