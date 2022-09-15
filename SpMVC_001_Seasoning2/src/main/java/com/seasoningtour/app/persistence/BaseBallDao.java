package com.seasoningtour.app.persistence;

import java.util.List;

import com.seasoningtour.app.model.BaseBallScheduleVO;

public interface BaseBallDao extends GenericDao<BaseBallScheduleVO, String> {

	// 야구 월별로 불러오기 위해 Select 따로 지정해줌
	public List<BaseBallScheduleVO> selectDusan();

	public List<BaseBallScheduleVO> selectSt_Dusan();

	public List<BaseBallScheduleVO> selectLg();

	public List<BaseBallScheduleVO> selectSt_Lg();

	public List<BaseBallScheduleVO> selectKia();

	public List<BaseBallScheduleVO> selectSt_Kia();

	public List<BaseBallScheduleVO> selectSsg();

	public List<BaseBallScheduleVO> selectSt_Ssg();

	public List<BaseBallScheduleVO> selectKiwoom();

	public List<BaseBallScheduleVO> selectSt_Kiwoom();

	public List<BaseBallScheduleVO> selectKt();

	public List<BaseBallScheduleVO> selectSt_Kt();

	public List<BaseBallScheduleVO> selectHanwha();

	public List<BaseBallScheduleVO> selectSt_Hanwha();

	public List<BaseBallScheduleVO> selectSamsung();

	public List<BaseBallScheduleVO> selectSt_Samsung();

	public List<BaseBallScheduleVO> selectNc();

	public List<BaseBallScheduleVO> selectSt_Nc();

	public List<BaseBallScheduleVO> selectLotte();

	public List<BaseBallScheduleVO> selectSt_Lotte();
}
