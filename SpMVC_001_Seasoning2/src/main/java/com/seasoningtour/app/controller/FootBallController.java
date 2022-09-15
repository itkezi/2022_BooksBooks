package com.seasoningtour.app.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.seasoningtour.app.model.AroundVO;
import com.seasoningtour.app.model.FootBallScheduleVO;
import com.seasoningtour.app.model.LocationVO;
import com.seasoningtour.app.service.AroundService;
import com.seasoningtour.app.service.FoodLocationService;
import com.seasoningtour.app.service.FootBallService;
import com.seasoningtour.app.service.LodgmentLocationService;
import com.seasoningtour.app.service.TourLocationService;

@RequestMapping(value = "/football")
@Controller
public class FootBallController {

	@Autowired
	private FootBallService fbService;
	@Autowired
	private AroundService aroundService;
	@Autowired
	private TourLocationService tourService;
	@Autowired
	private FoodLocationService foodService;
	@Autowired
	private LodgmentLocationService lodgmentService;

	@RequestMapping(value = "/get/{tour_location}/{food_location}/{lodgment_location}")
	public String seoul(@PathVariable("tour_location") String tour, @PathVariable("food_location") String food,
			@PathVariable("lodgment_location") String lodgment, Model model) throws IOException {

		List<LocationVO> tourList = tourService.get_TourLocation(tour);
		List<LocationVO> foodList = foodService.get_FoodLocation(food);
		List<LocationVO> lodgmentList = lodgmentService.get_LodgmentLocation(lodgment);

		model.addAttribute("TOURS", tourList);
		model.addAttribute("FOODS", foodList);
		model.addAttribute("LODGMENTS", lodgmentList);
		return "/popular/popular";
	}

	@RequestMapping(value = "/fb-seoul")
	public String seoul(Model model, String mapx, String mapy) throws IOException {

		List<FootBallScheduleVO> fblist = fbService.selectSeoul();
		List<FootBallScheduleVO> fbst = fbService.selectSt_Seoul();
		List<AroundVO> AroundList = aroundService.getAround("126.897243", "37.56823");

		model.addAttribute("FB_SEOUL", fblist);
		model.addAttribute("ST_SEOUL", fbst);
		model.addAttribute("LAYOUT", "SEOUL_IMG");

		model.addAttribute("SEOULaround", AroundList);

		return null;
	}

	@RequestMapping(value = "/fb-daegu")
	public String daegu(Model model) throws IOException {

		List<FootBallScheduleVO> fblist = fbService.selectDaegu();
		List<FootBallScheduleVO> fbst = fbService.selectSt_Daegu();
		List<AroundVO> AroundList = aroundService.getAround("128.588231", "35.881253");

		model.addAttribute("FB_DAEGU", fblist);
		model.addAttribute("ST_DAEGU", fbst);
		model.addAttribute("LAYOUT", "DAEGU_IMG");

		model.addAttribute("DEAGUAROUND", AroundList);

		return null;
	}

	@RequestMapping(value = "/fb-gangwon1")
	public String gangwon1(Model model) throws IOException {

		List<FootBallScheduleVO> fblist = fbService.selectGangwon1();
		List<FootBallScheduleVO> fbst = fbService.selectSt_Gangwon1();
		List<AroundVO> AroundList = aroundService.getAround("127.690945", "37.855952");

		model.addAttribute("FB_GANGWON1", fblist);
		model.addAttribute("ST_GANGWON1", fbst);
		model.addAttribute("LAYOUT", "DAEGU_IMG");

		model.addAttribute("GANGWON1ROUND", AroundList);

		return null;
	}

	@RequestMapping(value = "/fb-gangwon2")
	public String gangwon2(Model model) throws IOException {

		List<FootBallScheduleVO> fblist = fbService.selectGangwon2();
		List<FootBallScheduleVO> fbst = fbService.selectSt_Gangwon2();
		List<AroundVO> AroundList = aroundService.getAround("128.897503", "37.773561");

		model.addAttribute("FB_GANGWON2", fblist);
		model.addAttribute("ST_GANGWON2", fbst);
		model.addAttribute("LAYOUT", "DAEGU_IMG");

		model.addAttribute("GANGWON2ROUND", AroundList);

		return null;
	}

	@RequestMapping(value = "/fb-gimcheon")
	public String gimcheon(Model model) throws IOException {

		List<FootBallScheduleVO> fblist = fbService.selectGimcheon();
		List<FootBallScheduleVO> fbst = fbService.selectSt_Gimcheon();
		List<AroundVO> AroundList = aroundService.getAround("128.086509", "36.139666");

		model.addAttribute("FB_GIMCHEON", fblist);
		model.addAttribute("ST_GIMCHEON", fbst);
		model.addAttribute("LAYOUT", "DAEGU_IMG");

		model.addAttribute("GIMCHEONAROUND", AroundList);

		return null;
	}

	@RequestMapping(value = "/fb-incheon")
	public String incheon(Model model) throws IOException {

		List<FootBallScheduleVO> fblist = fbService.selectIncheon();
		List<FootBallScheduleVO> fbst = fbService.selectSt_Incheon();
		List<AroundVO> AroundList = aroundService.getAround("126.643035", "37.466131");

		model.addAttribute("FB_INCHEON", fblist);
		model.addAttribute("ST_INCHEON", fbst);
		model.addAttribute("LAYOUT", "INCHEON_IMG");

		model.addAttribute("INCHEONAROUND", AroundList);
		return null;
	}

	@RequestMapping(value = "/fb-jeju")
	public String jeju(Model model) throws IOException {

		List<FootBallScheduleVO> fblist = fbService.selectJeju();
		List<FootBallScheduleVO> fbst = fbService.selectSt_Jeju();
		List<AroundVO> AroundList = aroundService.getAround("126.509361", "33.246212");

//		List<LocationVO> SeoulTourList = tourService.get_TourLocation("39");
//		List<LocationVO> SeoulFoodList = foodService.get_FoodLocation("39");
//		List<LocationVO> SeoulLodgmentList = lodgmentService.get_LodgmentLocation("39");

		model.addAttribute("FB_JEJU", fblist);
		model.addAttribute("ST_JEJU", fbst);
		model.addAttribute("LAYOUT", "JEJU_IMG");

		model.addAttribute("JEJUAROUND", AroundList);

//		model.addAttribute("JEJUtour",SeoulTourList);
//		model.addAttribute("JEJUfood",SeoulFoodList);
//		model.addAttribute("JEJUlodgment",SeoulLodgmentList);

		return null;
	}

	@RequestMapping(value = "/fb-jeonbuk")
	public String jeonbuk(Model model) throws IOException {

		List<FootBallScheduleVO> fblist = fbService.selectJeonbuk();
		List<FootBallScheduleVO> fbst = fbService.selectSt_Jeonbuk();
		List<AroundVO> AroundList = aroundService.getAround("127.06448", "35.868071");

		model.addAttribute("FB_JEONBUK", fblist);
		model.addAttribute("ST_JEONBUK", fbst);
		model.addAttribute("LAYOUT", "JEONBUK_IMG");

		model.addAttribute("JEONBUKAROUND", AroundList);

		return null;
	}

	@RequestMapping(value = "/fb-pohang")
	public String pohang(Model model) throws IOException {

		List<FootBallScheduleVO> fblist = fbService.selectPohang();
		List<FootBallScheduleVO> fbst = fbService.selectSt_Pohang();
		List<AroundVO> AroundList = aroundService.getAround("129.384412", "35.997745");

		model.addAttribute("FB_POHANG", fblist);
		model.addAttribute("ST_POHANG", fbst);
		model.addAttribute("LAYOUT", "POHANG_IMG");

		model.addAttribute("POHANGAROUND", AroundList);

		return null;
	}

	@RequestMapping(value = "/fb-seongnam")
	public String seongnam(Model model) throws IOException {

		List<FootBallScheduleVO> fblist = fbService.selectSeongnam();
		List<FootBallScheduleVO> fbst = fbService.selectSt_Seongnam();
		List<AroundVO> AroundList = aroundService.getAround("127.121273", "37.410166");

		model.addAttribute("FB_SEONGNAM", fblist);
		model.addAttribute("ST_SEONGNAM", fbst);
		model.addAttribute("LAYOUT", "SEONGNAM_IMG");

		model.addAttribute("SEONGNAMAROUND", AroundList);

		return null;
	}

	@RequestMapping(value = "/fb-suwon_ss")
	public String suwon_ss(Model model) throws IOException {

		List<FootBallScheduleVO> fblist = fbService.selectSuwon_ss();
		List<FootBallScheduleVO> fbst = fbService.selectSt_Suwon_ss();
		List<AroundVO> AroundList = aroundService.getAround("127.036855", "37.286421");

		model.addAttribute("FB_SUWON_SS", fblist);
		model.addAttribute("ST_SUWON_SS", fbst);
		model.addAttribute("LAYOUT", "SUWON_SS_IMG");

		model.addAttribute("SUWONssAROUND", AroundList);

		return null;
	}

	@RequestMapping(value = "/fb-suwon")
	public String suwon(Model model) throws IOException {

		List<FootBallScheduleVO> fblist = fbService.selectSuwon();
		List<FootBallScheduleVO> fbst = fbService.selectSt_Suwon();
		List<AroundVO> AroundList = aroundService.getAround("127.011315", "37.297746");

		model.addAttribute("FB_SUWON", fblist);
		model.addAttribute("ST_SUWON", fbst);
		model.addAttribute("LAYOUT", "SUWON_IMG");

		model.addAttribute("SUWONAROUND", AroundList);

		return null;
	}

	@RequestMapping(value = "/fb-ulsan")
	public String ulsan(Model model) throws IOException {

		List<FootBallScheduleVO> fblist = fbService.selectUlsan();
		List<FootBallScheduleVO> fbst = fbService.selectSt_Ulsan();
		List<AroundVO> AroundList = aroundService.getAround("129.259512", "35.535328");

		model.addAttribute("FB_ULSAN", fblist);
		model.addAttribute("ST_ULSAN", fbst);
		model.addAttribute("LAYOUT", "ULSAN_IMG");

		model.addAttribute("ULSANAROUND", AroundList);

		return null;
	}

}