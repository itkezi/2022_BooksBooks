package com.seasoningtour.app.service;

import java.io.IOException;
import java.util.List;

import com.seasoningtour.app.model.LocationVO;

public interface FoodLocationService {
	
	public List<LocationVO> get_FoodLocation(String areaCode) throws IOException;
	
	public String getContentId(String areaCode) throws IOException;
	

}
