package com.seasoningtour.app.service;

import java.io.IOException;
import java.util.List;

import com.seasoningtour.app.model.AroundVO;

public interface AroundService {
	
	public List<AroundVO> getAround(String mapX, String mapY) throws IOException;
	public List<AroundVO> getDetailAround(String mapX, String mapY, String contentTypeId) throws IOException;

 }
