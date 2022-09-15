package com.seasoningtour.app.service;

import java.io.IOException;

import com.seasoningtour.app.model.CommonDetailVO;
import com.seasoningtour.app.model.FoodVO;
import com.seasoningtour.app.model.LodgmentVO;
import com.seasoningtour.app.model.TourListVO;

public interface DetailService {
	
	public TourListVO getTourDetail(String contentId) throws IOException;
	public FoodVO getFoodDetail(String contentId) throws IOException;
	public LodgmentVO getLodgmentDetail(String contentId) throws IOException;
	
	public CommonDetailVO getCommonDetail(String contentId) throws IOException;

}
