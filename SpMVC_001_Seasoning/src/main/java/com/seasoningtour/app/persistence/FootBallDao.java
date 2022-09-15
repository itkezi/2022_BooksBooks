package com.seasoningtour.app.persistence;

import java.util.List;

import com.seasoningtour.app.model.FootBallScheduleVO;

public interface FootBallDao extends GenericDao<FootBallScheduleVO, String> {

	public List<FootBallScheduleVO> findByTime(String time); // 경기 시간

	public List<FootBallScheduleVO> selectJeonbuk();
	
	public List<FootBallScheduleVO> selectSt_Jeonbuk();

	public List<FootBallScheduleVO> selectSeoul();

	public List<FootBallScheduleVO> selectSt_Seoul();

	public List<FootBallScheduleVO> selectGangwon1();
	
	public List<FootBallScheduleVO> selectSt_Gangwon1();

	public List<FootBallScheduleVO> selectGangwon2();
	
	public List<FootBallScheduleVO> selectSt_Gangwon2();
	
	public List<FootBallScheduleVO> selectIncheon();

	public List<FootBallScheduleVO> selectSt_Incheon();

	public List<FootBallScheduleVO> selectSeongnam();

	public List<FootBallScheduleVO> selectSt_Seongnam();
	
	public List<FootBallScheduleVO> selectSuwon_ss();

	public List<FootBallScheduleVO> selectSt_Suwon_ss();
	
	public List<FootBallScheduleVO> selectSuwon();

	public List<FootBallScheduleVO> selectSt_Suwon();
	
	public List<FootBallScheduleVO> selectGimcheon();

	public List<FootBallScheduleVO> selectSt_Gimcheon();
	
	public List<FootBallScheduleVO> selectDaegu();

	public List<FootBallScheduleVO> selectSt_Daegu();
	
	public List<FootBallScheduleVO> selectPohang();

	public List<FootBallScheduleVO> selectSt_Pohang();
	
	public List<FootBallScheduleVO> selectUlsan();

	public List<FootBallScheduleVO> selectSt_Ulsan();
	
	public List<FootBallScheduleVO> selectJeju();

	public List<FootBallScheduleVO> selectSt_Jeju();

}
