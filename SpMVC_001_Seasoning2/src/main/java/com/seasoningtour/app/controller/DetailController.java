package com.seasoningtour.app.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.seasoningtour.app.model.AroundVO;
import com.seasoningtour.app.model.CommonDetailVO;
import com.seasoningtour.app.model.FoodVO;
import com.seasoningtour.app.model.LodgmentVO;
import com.seasoningtour.app.model.TourListVO;
import com.seasoningtour.app.service.AroundService;
import com.seasoningtour.app.service.DetailService;

import lombok.extern.slf4j.Slf4j;


@Slf4j
@RequestMapping(value="/detail")
@Controller
public class DetailController {
   
   @Autowired
   public DetailService detailService;
   
   @Autowired
   private AroundService aroundService;
   
   @RequestMapping(value="/tour_detail/{contentid}")
   public String tour_detail(@PathVariable("contentid") String contentid, Model model) throws IOException {
      
      TourListVO tourDetailVO = detailService.getTourDetail(contentid) ;
      CommonDetailVO CommonDetailVO = detailService.getCommonDetail(contentid);
      List<AroundVO> AroundList = aroundService.getDetailAround(CommonDetailVO.mapx, CommonDetailVO.mapy, CommonDetailVO.contenttypeid );
      
      model.addAttribute("TOURDETAIL",tourDetailVO);
      model.addAttribute("COMMONDETAIL",CommonDetailVO);
      model.addAttribute("AROUND",AroundList);
      return "/detail/tour_detail";
   }

   @RequestMapping(value="/food_detail/{contentid}")
   public String food_detail(@PathVariable("contentid") String contentid, Model model) throws IOException {
      
      FoodVO foodDetailVO = detailService.getFoodDetail(contentid) ;
      CommonDetailVO CommonDetailVO = detailService.getCommonDetail(contentid);
      List<AroundVO> AroundList = aroundService.getDetailAround(CommonDetailVO.mapx, CommonDetailVO.mapy, CommonDetailVO.contenttypeid );
      
      model.addAttribute("FOODDETAIL",foodDetailVO);
      model.addAttribute("COMMONDETAIL",CommonDetailVO);
      model.addAttribute("AROUND",AroundList);
      return "/detail/food_detail";
   }
   @RequestMapping(value="/lodge_detail/{contentid}")
   public String detail(@PathVariable("contentid") String contentid, Model model) throws IOException {
      
      LodgmentVO lodgeDetailVO = detailService.getLodgmentDetail(contentid) ;
      CommonDetailVO CommonDetailVO = detailService.getCommonDetail(contentid);
      List<AroundVO> AroundList = aroundService.getDetailAround(CommonDetailVO.mapx, CommonDetailVO.mapy, CommonDetailVO.contenttypeid );
      
      model.addAttribute("LODGEDETAIL",lodgeDetailVO);
      model.addAttribute("COMMONDETAIL",CommonDetailVO);
      model.addAttribute("AROUND",AroundList);
      return "/detail/lodge_detail";
   }

   

}