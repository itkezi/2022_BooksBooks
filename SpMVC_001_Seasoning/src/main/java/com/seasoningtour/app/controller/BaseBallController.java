package com.seasoningtour.app.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.seasoningtour.app.model.AroundVO;
import com.seasoningtour.app.model.BaseBallScheduleVO;
import com.seasoningtour.app.model.FootBallScheduleVO;
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

//		List<BaseBallScheduleVO> bblist = bbService.selectDusan();
//		List<BaseBallScheduleVO> bbst = bbService.selectSt_Dusan();
		List<AroundVO> AroundList = aroundService.getAround("127.071976", "37.51215");
		
		List<BaseBallScheduleVO> bblist = new ArrayList<BaseBallScheduleVO>() ;
		
		BaseBallScheduleVO vo1 = new BaseBallScheduleVO();
		vo1.setSt_date("22.09.16(금)");
		vo1.setSt_match("삼성");
		bblist.add(vo1);
		
		BaseBallScheduleVO vo2 = new BaseBallScheduleVO();
		vo2.setSt_date("22.09.17(토)");
		vo2.setSt_match("SSG");
		bblist.add(vo2);
		
		BaseBallScheduleVO vo3 = new BaseBallScheduleVO();
		vo3.setSt_date("22.09.18(일)");
		vo3.setSt_match("SSG");
		bblist.add(vo3);
		
		BaseBallScheduleVO vo922 = new BaseBallScheduleVO();
		vo922.setSt_date("22.09.22(목)");
		vo922.setSt_match("키움");
		bblist.add(vo922);
		
		BaseBallScheduleVO vo923 = new BaseBallScheduleVO();
		vo923.setSt_date("22.09.23(금)");
		vo923.setSt_match("키움");
		bblist.add(vo923);
		
		BaseBallScheduleVO vo924 = new BaseBallScheduleVO();
		vo924.setSt_date("22.09.24(토)");
		vo924.setSt_match("SSG");
		bblist.add(vo924);
		
		BaseBallScheduleVO vo927 = new BaseBallScheduleVO();
		vo927.setSt_date("22.09.27(화)");
		vo927.setSt_match("KT");
		bblist.add(vo927);
		
		BaseBallScheduleVO vo928 = new BaseBallScheduleVO();
		vo928.setSt_date("22.09.28(수)");
		vo928.setSt_match("KT");
		bblist.add(vo928);

		BaseBallScheduleVO vo929 = new BaseBallScheduleVO();
		vo929.setSt_date("22.09.29(목)");
		vo929.setSt_match("한화");
		bblist.add(vo929);
		
		BaseBallScheduleVO vo930 = new BaseBallScheduleVO();
		vo930.setSt_date("22.09.29(금)");
		vo930.setSt_match("삼성");
		bblist.add(vo930);
		
//		// 서울
//		List<LocationVO> SeoulTourList = tourService.get_TourLocation("1");
//		List<LocationVO> SeoulFoodList = foodService.get_FoodLocation("1");
//		List<LocationVO> SeoulLodgmentList = lodgmentService.get_LodgmentLocation("1");
//		

		model.addAttribute("BB_DUSAN", bblist);
		model.addAttribute("ST_DUSAN", "서울종합운동장 야구장");
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

//		List<BaseBallScheduleVO> bblist = bbService.selectLg();
//		List<BaseBallScheduleVO> bbst = bbService.selectSt_Lg();
		List<AroundVO> AroundList = aroundService.getAround("127.071976", "37.51215");
		
		List<BaseBallScheduleVO> bblist = new ArrayList<BaseBallScheduleVO>() ;
		
		BaseBallScheduleVO vo1 = new BaseBallScheduleVO();
		vo1.setSt_date("22.09.18(일)");
		vo1.setSt_match("한화");
		bblist.add(vo1);

		BaseBallScheduleVO vo2 = new BaseBallScheduleVO();
		vo2.setSt_date("22.09.18(일)");
		vo2.setSt_match("KIA");
		bblist.add(vo2);

		BaseBallScheduleVO vo3 = new BaseBallScheduleVO();
		vo3.setSt_date("22.09.20(화)");
		vo3.setSt_match("KIA");
		bblist.add(vo3);
		
		BaseBallScheduleVO vo4 = new BaseBallScheduleVO();
		vo4.setSt_date("22.09.21(수)");
		vo4.setSt_match("KIA");
		bblist.add(vo4);
		
		BaseBallScheduleVO vo925 = new BaseBallScheduleVO();
		vo925.setSt_date("22.09.25(일)");
		vo925.setSt_match("SSG");
		bblist.add(vo925);
		
		BaseBallScheduleVO vo927 = new BaseBallScheduleVO();
		vo927.setSt_date("22.09.27(화)");
		vo927.setSt_match("한화");
		bblist.add(vo927);
		
		BaseBallScheduleVO vo928 = new BaseBallScheduleVO();
		vo928.setSt_date("22.09.28(수)");
		vo928.setSt_match("한화");
		bblist.add(vo928);
		
		model.addAttribute("BB_LG", bblist);
		model.addAttribute("ST_LG", "서울종합운동장 야구장");
		model.addAttribute("LAYOUT", "LG_IMG");
		model.addAttribute("SEOULaround",AroundList);

		return null;
	}

	@RequestMapping(value = "/bb-kia")
	public String kia(Model model,String mapx, String mapy) throws IOException {

//		List<BaseBallScheduleVO> bblist = bbService.selectKia();
//		List<BaseBallScheduleVO> bbst = bbService.selectSt_Kia();
		List<AroundVO> AroundList = aroundService.getAround("126.888992", "35.168339");
		
		List<BaseBallScheduleVO> bblist = new ArrayList<BaseBallScheduleVO>() ;
		
		BaseBallScheduleVO vo1 = new BaseBallScheduleVO();
		vo1.setSt_date("22.09.17(토)");
		vo1.setSt_match("삼성");
		bblist.add(vo1);

		BaseBallScheduleVO vo2 = new BaseBallScheduleVO();
		vo2.setSt_date("22.09.18(일)");
		vo2.setSt_match("삼성");
		bblist.add(vo2);
		
		BaseBallScheduleVO vo922 = new BaseBallScheduleVO();
		vo922.setSt_date("22.09.22(목)");
		vo922.setSt_match("NC");
		bblist.add(vo922);
		
		BaseBallScheduleVO vo923 = new BaseBallScheduleVO();
		vo923.setSt_date("22.09.23(금)");
		vo923.setSt_match("NC");
		bblist.add(vo923);
		
		BaseBallScheduleVO vo924 = new BaseBallScheduleVO();
		vo924.setSt_date("22.09.24(토)");
		vo924.setSt_match("NC");
		bblist.add(vo924);
		
		BaseBallScheduleVO vo925 = new BaseBallScheduleVO();
		vo925.setSt_date("22.09.25(일)");
		vo925.setSt_match("삼성");
		bblist.add(vo925);

		model.addAttribute("BB_KIA", bblist);
		model.addAttribute("ST_KIA", "광주 기아 챔피언스 필드");
		model.addAttribute("LAYOUT", "KIA_IMG");
		model.addAttribute("SEOULaround",AroundList);

		return null;
	}

	@RequestMapping(value = "/bb-ssg")
	public String ssg(Model model,String mapx, String mapy) throws IOException {

//		List<BaseBallScheduleVO> bblist = bbService.selectSsg();
//		List<BaseBallScheduleVO> bbst = bbService.selectSt_Ssg();
		List<AroundVO> AroundList = aroundService.getAround("126.690806", "37.435139");
		
		List<BaseBallScheduleVO> bblist = new ArrayList<BaseBallScheduleVO>() ;
		
		BaseBallScheduleVO vo1 = new BaseBallScheduleVO();
		vo1.setSt_date("22.09.16(금)");
		vo1.setSt_match("NC");
		bblist.add(vo1);
		
		BaseBallScheduleVO vo2 = new BaseBallScheduleVO();
		vo2.setSt_date("22.10.01(토)");
		vo2.setSt_match("KIA");
		bblist.add(vo2);

		BaseBallScheduleVO vo3 = new BaseBallScheduleVO();
		vo3.setSt_date("22.10.03(월)");
		vo3.setSt_match("한화");
		bblist.add(vo3);
		
		BaseBallScheduleVO vo4 = new BaseBallScheduleVO();
		vo4.setSt_date("22.10.05(수)");
		vo4.setSt_match("두산");
		bblist.add(vo4);

		BaseBallScheduleVO vo5 = new BaseBallScheduleVO();
		vo5.setSt_date("22.10.08(토)");
		vo5.setSt_match("삼성");
		bblist.add(vo5);
		
		model.addAttribute("BB_SSG", bblist);
		model.addAttribute("ST_SSG", "인천 SSG 랜더스필드");
		model.addAttribute("LAYOUT", "SSG_IMG");
		model.addAttribute("SEOULaround",AroundList);

		return null;
	}

	@RequestMapping(value = "/bb-kiwoom")
	public String kiwoom(Model model,String mapx, String mapy) throws IOException {

//		List<BaseBallScheduleVO> bblist = bbService.selectKiwoom();
//		List<BaseBallScheduleVO> bbst = bbService.selectSt_Kiwoom();
		List<AroundVO> AroundList = aroundService.getAround("126.866667", "37.498333");
		
		List<BaseBallScheduleVO> bblist = new ArrayList<BaseBallScheduleVO>() ;
		
		BaseBallScheduleVO vo1 = new BaseBallScheduleVO();
		vo1.setSt_date("22.09.16(금)");
		vo1.setSt_match("롯데");
		bblist.add(vo1);
		
		BaseBallScheduleVO vo927 = new BaseBallScheduleVO();
		vo927.setSt_date("22.09.27(화)");
		vo927.setSt_match("NC");
		bblist.add(vo927);
		
		BaseBallScheduleVO vo929 = new BaseBallScheduleVO();
		vo929.setSt_date("22.09.29(목)");
		vo929.setSt_match("SSG");
		bblist.add(vo929);
		
		BaseBallScheduleVO vo930 = new BaseBallScheduleVO();
		vo930.setSt_date("22.09.29(금)");
		vo930.setSt_match("SSG");
		bblist.add(vo930);

		model.addAttribute("BB_KIWOOM", bblist);
		model.addAttribute("ST_KIWOOM", "고척 스카이돔");
		model.addAttribute("LAYOUT", "KIWOOM_IMG");
		model.addAttribute("SEOULaround",AroundList);

		return null;
	}

	@RequestMapping(value = "/bb-kt")
	public String kt(Model model,String mapx, String mapy) throws IOException {

//		List<BaseBallScheduleVO> bblist = bbService.selectKt();
//		List<BaseBallScheduleVO> bbst = bbService.selectSt_Kt();
		List<AroundVO> AroundList = aroundService.getAround("127.009781", "37.299759");
		
		List<BaseBallScheduleVO> bblist = new ArrayList<BaseBallScheduleVO>() ;
		
		BaseBallScheduleVO vo1 = new BaseBallScheduleVO();
		vo1.setSt_date("22.09.16(금)");
		vo1.setSt_match("LG");
		bblist.add(vo1);
		
		BaseBallScheduleVO vo2 = new BaseBallScheduleVO();
		vo2.setSt_date("22.09.18(일)");
		vo2.setSt_match("SSG");
		bblist.add(vo2);
		
		BaseBallScheduleVO vo3 = new BaseBallScheduleVO();
		vo3.setSt_date("22.09.20(화)");
		vo3.setSt_match("SSG");
		bblist.add(vo3);

		BaseBallScheduleVO vo4 = new BaseBallScheduleVO();
		vo4.setSt_date("22.09.21(수)");
		vo4.setSt_match("SSG");
		bblist.add(vo4);
		
		BaseBallScheduleVO vo922 = new BaseBallScheduleVO();
		vo922.setSt_date("22.09.22(목)");
		vo922.setSt_match("삼성");
		bblist.add(vo922);
		
		BaseBallScheduleVO vo923 = new BaseBallScheduleVO();
		vo923.setSt_date("22.09.23(금)");
		vo923.setSt_match("삼성");
		bblist.add(vo923);	
		
		BaseBallScheduleVO vo925 = new BaseBallScheduleVO();
		vo925.setSt_date("22.09.25(일)");
		vo925.setSt_match("NC");
		bblist.add(vo925);
		
		BaseBallScheduleVO vo929 = new BaseBallScheduleVO();
		vo929.setSt_date("22.09.29(목)");
		vo929.setSt_match("LG");
		bblist.add(vo929);

		model.addAttribute("BB_KT", bblist);
		model.addAttribute("ST_KT", "수원 케이티 위즈 파크");
		model.addAttribute("LAYOUT", "KT_IMG");
		model.addAttribute("SEOULaround",AroundList);

		return null;
	}

	@RequestMapping(value = "/bb-hanwha")
	public String hanwha(Model model,String mapx, String mapy) throws IOException {

//		List<BaseBallScheduleVO> bblist = bbService.selectHanwha();
//		List<BaseBallScheduleVO> bbst = bbService.selectSt_Hanwha();
		List<AroundVO> AroundList = aroundService.getAround("127.429131", "36.317085");
		
		List<BaseBallScheduleVO> bblist = new ArrayList<BaseBallScheduleVO>() ;
		
		BaseBallScheduleVO vo1 = new BaseBallScheduleVO();
		vo1.setSt_date("22.09.16(금)");
		vo1.setSt_match("KIA");
		bblist.add(vo1);
		
		
		BaseBallScheduleVO vo2 = new BaseBallScheduleVO();
		vo2.setSt_date("22.09.17(토)");
		vo2.setSt_match("LG");
		bblist.add(vo2);
		
		BaseBallScheduleVO vo3 = new BaseBallScheduleVO();
		vo3.setSt_date("22.09.18(일)");
		vo3.setSt_match("LG");
		bblist.add(vo3);
		
		BaseBallScheduleVO vo922 = new BaseBallScheduleVO();
		vo922.setSt_date("22.09.22(목)");
		vo922.setSt_match("SSG");
		bblist.add(vo922);
		
		BaseBallScheduleVO vo923 = new BaseBallScheduleVO();
		vo923.setSt_date("22.09.23(금)");
		vo923.setSt_match("SSG");
		bblist.add(vo923);
		
		BaseBallScheduleVO vo924 = new BaseBallScheduleVO();
		vo924.setSt_date("22.09.24(토)");
		vo924.setSt_match("LG");
		bblist.add(vo924);

		model.addAttribute("BB_HANWHA", bblist);
		model.addAttribute("ST_HANWHA", "대전 한화생명 이글스파크");
		model.addAttribute("LAYOUT", "HANWHA_IMG");
		model.addAttribute("SEOULaround",AroundList);

		return null;
	}

	@RequestMapping(value = "/bb-samsung")
	public String samsung(Model model,String mapx, String mapy) throws IOException {

//		List<BaseBallScheduleVO> bblist = bbService.selectSamsung();
//		List<BaseBallScheduleVO> bbst = bbService.selectSt_Samsung();
		List<AroundVO> AroundList = aroundService.getAround("128.681641", "35.841064");
		
		List<BaseBallScheduleVO> bblist = new ArrayList<BaseBallScheduleVO>() ;
		
		BaseBallScheduleVO vo1 = new BaseBallScheduleVO();
		vo1.setSt_date("22.09.18(일)");
		vo1.setSt_match("키움");
		bblist.add(vo1);
		
		BaseBallScheduleVO vo2 = new BaseBallScheduleVO();
		vo2.setSt_date("22.09.20(화)");
		vo2.setSt_match("키움");
		bblist.add(vo2);
		
		BaseBallScheduleVO vo3 = new BaseBallScheduleVO();
		vo3.setSt_date("22.09.21(수)");
		vo3.setSt_match("키움");
		bblist.add(vo3);
		
		BaseBallScheduleVO vo928 = new BaseBallScheduleVO();
		vo928.setSt_date("22.09.28(수)");
		vo928.setSt_match("NC");
		bblist.add(vo928);

		model.addAttribute("BB_SAMSUNG", bblist);
		model.addAttribute("ST_SAMSUNG", "대구 삼성 라이온즈 파크");
		model.addAttribute("LAYOUT", "SAMSUNG_IMG");
		model.addAttribute("SEOULaround",AroundList);

		return null;
	}

	@RequestMapping(value = "/bb-lotte")
	public String lotte(Model model,String mapx, String mapy) throws IOException {

//		List<BaseBallScheduleVO> bblist = bbService.selectLotte();
//		List<BaseBallScheduleVO> bbst = bbService.selectSt_Lotte();
		List<AroundVO> AroundList = aroundService.getAround("129.061584", "35.194077");
		
		List<BaseBallScheduleVO> bblist = new ArrayList<BaseBallScheduleVO>() ;
		
		BaseBallScheduleVO vo1 = new BaseBallScheduleVO();
		vo1.setSt_date("22.09.17(토)");
		vo1.setSt_match("KT");
		bblist.add(vo1);

		BaseBallScheduleVO vo2 = new BaseBallScheduleVO();
		vo2.setSt_date("22.09.18(일)");
		vo2.setSt_match("KT");
		bblist.add(vo2);

		BaseBallScheduleVO vo3 = new BaseBallScheduleVO();
		vo3.setSt_date("22.09.18(일)");
		vo3.setSt_match("한화");
		bblist.add(vo3);
		
		BaseBallScheduleVO vo4 = new BaseBallScheduleVO();
		vo4.setSt_date("22.09.20(화)");
		vo4.setSt_match("한화");
		bblist.add(vo4);
		
		BaseBallScheduleVO vo5 = new BaseBallScheduleVO();
		vo5.setSt_date("22.09.21(수)");
		vo5.setSt_match("한화");
		bblist.add(vo5);
		
		BaseBallScheduleVO vo922 = new BaseBallScheduleVO();
		vo922.setSt_date("22.09.22(목)");
		vo922.setSt_match("LG");
		bblist.add(vo922);

		BaseBallScheduleVO vo923 = new BaseBallScheduleVO();
		vo923.setSt_date("22.09.23(금)");
		vo923.setSt_match("LG");
		bblist.add(vo923);
		
		BaseBallScheduleVO vo929 = new BaseBallScheduleVO();
		vo929.setSt_date("22.09.29(목)");
		vo929.setSt_match("KIA");
		bblist.add(vo929);
		
		BaseBallScheduleVO vo930 = new BaseBallScheduleVO();
		vo930.setSt_date("22.09.29(금)");
		vo930.setSt_match("한화");
		bblist.add(vo930);
		
		model.addAttribute("BB_LOTTE", bblist);
		model.addAttribute("ST_LOTTE", "사직 야구장");
		model.addAttribute("LAYOUT", "LOTTE_IMG");
		model.addAttribute("SEOULaround",AroundList);

		return null;
	}

	@RequestMapping(value = "/bb-nc")
	public String nc(Model model,String mapx, String mapy) throws IOException {

//		List<BaseBallScheduleVO> bblist = bbService.selectNc();
//		List<BaseBallScheduleVO> bbst = bbService.selectSt_Nc();
		List<AroundVO> AroundList = aroundService.getAround("128.583003", "35.222156");
		
		List<BaseBallScheduleVO> bblist = new ArrayList<BaseBallScheduleVO>() ;
		
		BaseBallScheduleVO vo1 = new BaseBallScheduleVO();
		vo1.setSt_date("22.09.17(토)");
		vo1.setSt_match("키움");
		bblist.add(vo1);
		
		BaseBallScheduleVO vo2 = new BaseBallScheduleVO();
		vo2.setSt_date("22.09.18(일)");
		vo2.setSt_match("키움");
		bblist.add(vo2);
		
		BaseBallScheduleVO vo3 = new BaseBallScheduleVO();
		vo3.setSt_date("22.09.18(일)");
		vo3.setSt_match("두산");
		bblist.add(vo3);
		
		BaseBallScheduleVO vo4 = new BaseBallScheduleVO();
		vo4.setSt_date("22.09.20(화)");
		vo4.setSt_match("두산");
		bblist.add(vo4);
		
		BaseBallScheduleVO vo5 = new BaseBallScheduleVO();
		vo5.setSt_date("22.09.21(수)");
		vo5.setSt_match("두산");
		bblist.add(vo5);
		
		BaseBallScheduleVO vo929 = new BaseBallScheduleVO();
		vo929.setSt_date("22.09.29(목)");
		vo929.setSt_match("삼성");
		bblist.add(vo929);

		BaseBallScheduleVO vo930 = new BaseBallScheduleVO();
		vo930.setSt_date("22.09.29(금)");
		vo930.setSt_match("LG");
		bblist.add(vo930);

		model.addAttribute("BB_NC", bblist);
		model.addAttribute("ST_NC", "창원 NC 파크");
		model.addAttribute("LAYOUT", "NC_IMG");
		model.addAttribute("SEOULaround",AroundList);

		return null;
	}

}
