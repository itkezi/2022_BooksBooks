package com.seasoningtour.app.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.seasoningtour.app.model.FootBallScheduleVO;
import com.seasoningtour.app.persistence.FootBallDao;
import com.seasoningtour.app.service.FootBallService;

@Service
public class FootBallServiceImpl implements FootBallService {

	@Autowired
	private FootBallDao fbDao;

	@Override
	public List<FootBallScheduleVO> selectSeoul() {
		List<FootBallScheduleVO> fbSchedule = fbDao.selectSeoul();
		return fbSchedule;
	}

	@Override
	public List<FootBallScheduleVO> selectSt_Seoul() {
		List<FootBallScheduleVO> fbSchedule = fbDao.selectSt_Seoul();
		return fbSchedule;
	}

	@Override
	public List<FootBallScheduleVO> selectJeonbuk() {
		List<FootBallScheduleVO> fbSchedule = fbDao.selectJeonbuk();
		return fbSchedule;
	}

	@Override
	public List<FootBallScheduleVO> selectSt_Jeonbuk() {
		List<FootBallScheduleVO> fbSchedule = fbDao.selectSt_Jeonbuk();
		return fbSchedule;
	}

	@Override
	public List<FootBallScheduleVO> selectGangwon1() {
		List<FootBallScheduleVO> fbSchedule = fbDao.selectGangwon1();
		return fbSchedule;
	}

	@Override
	public List<FootBallScheduleVO> selectGangwon2() {
		List<FootBallScheduleVO> fbSchedule = fbDao.selectGangwon2();
		return fbSchedule;
	}

	@Override
	public List<FootBallScheduleVO> selectSt_Gangwon1() {
		List<FootBallScheduleVO> fbSchedule = fbDao.selectSt_Gangwon1();
		return fbSchedule;
	}

	@Override
	public List<FootBallScheduleVO> selectSt_Gangwon2() {
		List<FootBallScheduleVO> fbSchedule = fbDao.selectSt_Gangwon2();
		return fbSchedule;
	}

	@Override
	public List<FootBallScheduleVO> selectIncheon() {
		List<FootBallScheduleVO> fbSchedule = fbDao.selectIncheon();
		return fbSchedule;
	}

	@Override
	public List<FootBallScheduleVO> selectSt_Incheon() {
		List<FootBallScheduleVO> fbSchedule = fbDao.selectSt_Incheon();
		return fbSchedule;
	}

	@Override
	public List<FootBallScheduleVO> selectSeongnam() {
		List<FootBallScheduleVO> fbSchedule = fbDao.selectSeongnam();
		return fbSchedule;
	}

	@Override
	public List<FootBallScheduleVO> selectSt_Seongnam() {
		List<FootBallScheduleVO> fbSchedule = fbDao.selectSt_Seongnam();
		return fbSchedule;
	}

	@Override
	public List<FootBallScheduleVO> selectSuwon_ss() {
		List<FootBallScheduleVO> fbSchedule = fbDao.selectSuwon_ss();
		return fbSchedule;
	}

	@Override
	public List<FootBallScheduleVO> selectSt_Suwon_ss() {
		List<FootBallScheduleVO> fbSchedule = fbDao.selectSt_Suwon_ss();
		return fbSchedule;
	}

	@Override
	public List<FootBallScheduleVO> selectSuwon() {
		List<FootBallScheduleVO> fbSchedule = fbDao.selectSuwon();
		return fbSchedule;
	}

	@Override
	public List<FootBallScheduleVO> selectSt_Suwon() {
		List<FootBallScheduleVO> fbSchedule = fbDao.selectSt_Suwon();
		return fbSchedule;
	}

	@Override
	public List<FootBallScheduleVO> selectGimcheon() {
		List<FootBallScheduleVO> fbSchedule = fbDao.selectGimcheon();
		return fbSchedule;
	}

	@Override
	public List<FootBallScheduleVO> selectSt_Gimcheon() {
		List<FootBallScheduleVO> fbSchedule = fbDao.selectSt_Gimcheon();
		return fbSchedule;
	}

	@Override
	public List<FootBallScheduleVO> selectDaegu() {
		List<FootBallScheduleVO> fbSchedule = fbDao.selectDaegu();
		return fbSchedule;
	}

	@Override
	public List<FootBallScheduleVO> selectSt_Daegu() {
		List<FootBallScheduleVO> fbSchedule = fbDao.selectSt_Daegu();
		return fbSchedule;
	}

	@Override
	public List<FootBallScheduleVO> selectPohang() {
		List<FootBallScheduleVO> fbSchedule = fbDao.selectPohang();
		return fbSchedule;
	}

	@Override
	public List<FootBallScheduleVO> selectSt_Pohang() {
		List<FootBallScheduleVO> fbSchedule = fbDao.selectSt_Pohang();
		return fbSchedule;
	}

	@Override
	public List<FootBallScheduleVO> selectUlsan() {
		List<FootBallScheduleVO> fbSchedule = fbDao.selectUlsan();
		return fbSchedule;
	}

	@Override
	public List<FootBallScheduleVO> selectSt_Ulsan() {
		List<FootBallScheduleVO> fbSchedule = fbDao.selectSt_Ulsan();
		return fbSchedule;
	}

	@Override
	public List<FootBallScheduleVO> selectJeju() {
		List<FootBallScheduleVO> fbSchedule = fbDao.selectJeju();
		return fbSchedule;
	}

	@Override
	public List<FootBallScheduleVO> selectSt_Jeju() {
		List<FootBallScheduleVO> fbSchedule = fbDao.selectSt_Jeju();
		return fbSchedule;
	}

	@Override
	public List<FootBallScheduleVO> findByTime(String time) {
		return null;
	}

	@Override
	public FootBallScheduleVO findById(String id) {
		return null;
	}

	@Override
	public List<FootBallScheduleVO> findByName(String name) {
		return null;
	}

	@Override
	public List<FootBallScheduleVO> findByDate(String date) {
		return null;
	}

	@Override
	public List<FootBallScheduleVO> findByMatch(String match) {
		return null;
	}

	@Override
	public List<FootBallScheduleVO> selectAll() {
		return null;
	}

}
