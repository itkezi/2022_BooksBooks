package com.seasoningtour.app.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.seasoningtour.app.model.AroundVO;
import com.seasoningtour.app.model.BaseBallScheduleVO;
import com.seasoningtour.app.model.LocationVO;
import com.seasoningtour.app.service.AroundService;
import com.seasoningtour.app.service.BaseBallService;
import com.seasoningtour.app.service.FoodLocationService;
import com.seasoningtour.app.service.LodgmentLocationService;
import com.seasoningtour.app.service.TourLocationService;

@RequestMapping(value = "/baseball")
@Controller
public class BaseBallController {

	@Autowired
	private BaseBallService bbService;
	@Autowired
	private AroundService aroundService;
	@Autowired
	private TourLocationService tourService;
	@Autowired
	private FoodLocationService foodService;
	@Autowired
	private LodgmentLocationService lodgmentService;

//	@RequestMapping(value = { "/", "" })
//	public String home() {
//		return "baseball/bb-kia";
//	}
	
	@RequestMapping(value = "/get/{tour_location}/{food_location}/{lodgment_location}")
	public String seoul(
			@PathVariable("tour_location") String tour,
			@PathVariable("food_location") String food,
			@PathVariable("lodgment_location") String lodgment, 
			Model model) throws IOException {
		
		List<LocationVO> tourList = tourService.get_TourLocation(tour);
		List<LocationVO> foodList = foodService.get_FoodLocation(food);
		List<LocationVO> lodgmentList = lodgmentService.get_LodgmentLocation(lodgment);

		model.addAttribute("TOURS",tourList);
		model.addAttribute("FOODS",foodList);
		model.addAttribute("LODGMENTS",lodgmentList);
		return "/popular/popular";
	}

	@RequestMapping(value = "/bb-dusan")
	public String dusan(Model model,String mapx, String mapy) throws IOException {

		List<BaseBallScheduleVO> bblist = bbService.selectDusan();
		List<BaseBallScheduleVO> bbst = bbService.selectSt_Dusan();
		List<AroundVO> AroundList = aroundService.getAround("127.071976", "37.51215");

//		// 서울
//		List<LocationVO> SeoulTourList = tourService.get_TourLocation("1");
//		List<LocationVO> SeoulFoodList = foodService.get_FoodLocation("1");
//		List<LocationVO> SeoulLodgmentList = lodgmentService.get_LodgmentLocation("1");
//		

		model.addAttribute("BB_DUSAN", bblist);
		model.addAttribute("ST_DUSAN", bbst);
		model.addAttribute("LAYOUT", "DUSAN_IMG");
		model.addAttribute("SEOULaround",AroundList);
		//서울
//		model.addAttribute("SEOULtour",SeoulTourList);
//		model.addAttribute("SEOULfood",SeoulFoodList);
//		model.addAttribute("SEOULlodgment",SeoulLodgmentList);

		return null;
	}

	@RequestMapping(value = "/bb-lg")
	public String lg(Model model,String mapx, String mapy) throws IOException {

		List<BaseBallScheduleVO> bblist = bbService.selectLg();
		List<BaseBallScheduleVO> bbst = bbService.selectSt_Lg();
		List<AroundVO> AroundList = aroundService.getAround("127.071976", "37.51215");

		model.addAttribute("BB_LG", bblist);
		model.addAttribute("ST_LG", bbst);
		model.addAttribute("LAYOUT", "LG_IMG");
		model.addAttribute("SEOULaround",AroundList);

		return null;
	}

	@RequestMapping(value = "/bb-kia")
	public String kia(Model model,String mapx, String mapy) throws IOException {

		List<BaseBallScheduleVO> bblist = bbService.selectKia();
		List<BaseBallScheduleVO> bbst = bbService.selectSt_Kia();
		List<AroundVO> AroundList = aroundService.getAround("126.888992", "35.168339");

		model.addAttribute("BB_KIA", bblist);
		model.addAttribute("ST_KIA", bbst);
		model.addAttribute("LAYOUT", "KIA_IMG");
		model.addAttribute("SEOULaround",AroundList);

		return null;
	}

	@RequestMapping(value = "/bb-ssg")
	public String ssg(Model model,String mapx, String mapy) throws IOException {

		List<BaseBallScheduleVO> bblist = bbService.selectSsg();
		List<BaseBallScheduleVO> bbst = bbService.selectSt_Ssg();
		List<AroundVO> AroundList = aroundService.getAround("126.690806", "37.435139");

		model.addAttribute("BB_SSG", bblist);
		model.addAttribute("ST_SSG", bbst);
		model.addAttribute("LAYOUT", "SSG_IMG");
		model.addAttribute("SEOULaround",AroundList);

		return null;
	}

	@RequestMapping(value = "/bb-kiwoom")
	public String kiwoom(Model model,String mapx, String mapy) throws IOException {

		List<BaseBallScheduleVO> bblist = bbService.selectKiwoom();
		List<BaseBallScheduleVO> bbst = bbService.selectSt_Kiwoom();
		List<AroundVO> AroundList = aroundService.getAround("126.866667", "37.498333");

		model.addAttribute("BB_KIWOOM", bblist);
		model.addAttribute("ST_KIWOOM", bbst);
		model.addAttribute("LAYOUT", "KIWOOM_IMG");
		model.addAttribute("SEOULaround",AroundList);

		return null;
	}

	@RequestMapping(value = "/bb-kt")
	public String kt(Model model,String mapx, String mapy) throws IOException {

		List<BaseBallScheduleVO> bblist = bbService.selectKt();
		List<BaseBallScheduleVO> bbst = bbService.selectSt_Kt();
		List<AroundVO> AroundList = aroundService.getAround("127.009781", "37.299759");

		model.addAttribute("BB_KT", bblist);
		model.addAttribute("ST_KT", bbst);
		model.addAttribute("LAYOUT", "KT_IMG");
		model.addAttribute("SEOULaround",AroundList);

		return null;
	}

	@RequestMapping(value = "/bb-hanwha")
	public String hanwha(Model model,String mapx, String mapy) throws IOException {

		List<BaseBallScheduleVO> bblist = bbService.selectHanwha();
		List<BaseBallScheduleVO> bbst = bbService.selectSt_Hanwha();
		List<AroundVO> AroundList = aroundService.getAround("127.429131", "36.317085");

		model.addAttribute("BB_HANWHA", bblist);
		model.addAttribute("ST_HANWHA", bbst);
		model.addAttribute("LAYOUT", "HANWHA_IMG");
		model.addAttribute("SEOULaround",AroundList);

		return null;
	}

	@RequestMapping(value = "/bb-samsung")
	public String samsung(Model model,String mapx, String mapy) throws IOException {

		List<BaseBallScheduleVO> bblist = bbService.selectSamsung();
		List<BaseBallScheduleVO> bbst = bbService.selectSt_Samsung();
		List<AroundVO> AroundList = aroundService.getAround("128.681641", "35.841064");

		model.addAttribute("BB_SAMSUNG", bblist);
		model.addAttribute("ST_SAMSUNG", bbst);
		model.addAttribute("LAYOUT", "SAMSUNG_IMG");
		model.addAttribute("SEOULaround",AroundList);

		return null;
	}

	@RequestMapping(value = "/bb-lotte")
	public String lotte(Model model,String mapx, String mapy) throws IOException {

		List<BaseBallScheduleVO> bblist = bbService.selectLotte();
		List<BaseBallScheduleVO> bbst = bbService.selectSt_Lotte();
		List<AroundVO> AroundList = aroundService.getAround("129.061584", "35.194077");

		model.addAttribute("BB_LOTTE", bblist);
		model.addAttribute("ST_LOTTE", bbst);
		model.addAttribute("LAYOUT", "LOTTE_IMG");
		model.addAttribute("SEOULaround",AroundList);

		return null;
	}

	@RequestMapping(value = "/bb-nc")
	public String nc(Model model,String mapx, String mapy) throws IOException {

		List<BaseBallScheduleVO> bblist = bbService.selectNc();
		List<BaseBallScheduleVO> bbst = bbService.selectSt_Nc();
		List<AroundVO> AroundList = aroundService.getAround("128.583003", "35.222156");

		model.addAttribute("BB_NC", bblist);
		model.addAttribute("ST_NC", bbst);
		model.addAttribute("LAYOUT", "NC_IMG");
		model.addAttribute("SEOULaround",AroundList);

		return null;
	}

}
