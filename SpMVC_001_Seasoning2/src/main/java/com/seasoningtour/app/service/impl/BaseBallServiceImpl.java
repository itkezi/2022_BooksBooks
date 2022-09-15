package com.seasoningtour.app.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.seasoningtour.app.model.BaseBallScheduleVO;
import com.seasoningtour.app.persistence.BaseBallDao;
import com.seasoningtour.app.service.BaseBallService;

@Service
public class BaseBallServiceImpl implements BaseBallService {
	@Autowired
	private BaseBallDao bbDao;

	@Override
	public List<BaseBallScheduleVO> selectDusan() {
		List<BaseBallScheduleVO> bbSchedule = bbDao.selectDusan();
		return bbSchedule;
	}

	@Override
	public List<BaseBallScheduleVO> selectSt_Dusan() {
		List<BaseBallScheduleVO> bbSchedule = bbDao.selectSt_Dusan();
		return bbSchedule;
	}

	@Override
	public List<BaseBallScheduleVO> selectLg() {
		List<BaseBallScheduleVO> bbSchedule = bbDao.selectLg();
		return bbSchedule;
	}

	@Override
	public List<BaseBallScheduleVO> selectSt_Lg() {
		List<BaseBallScheduleVO> bbSchedule = bbDao.selectSt_Lg();
		return bbSchedule;
	}

	@Override
	public List<BaseBallScheduleVO> selectKia() {
		List<BaseBallScheduleVO> bbSchedule = bbDao.selectKia();
		return bbSchedule;
	}

	@Override
	public List<BaseBallScheduleVO> selectSt_Kia() {
		List<BaseBallScheduleVO> bbSchedule = bbDao.selectSt_Kia();
		return bbSchedule;
	}

	@Override
	public List<BaseBallScheduleVO> selectSsg() {
		List<BaseBallScheduleVO> bbSchedule = bbDao.selectSsg();
		return bbSchedule;
	}

	@Override
	public List<BaseBallScheduleVO> selectSt_Ssg() {
		List<BaseBallScheduleVO> bbSchedule = bbDao.selectSt_Ssg();
		return bbSchedule;
	}

	@Override
	public List<BaseBallScheduleVO> selectKiwoom() {
		List<BaseBallScheduleVO> bbSchedule = bbDao.selectKiwoom();
		return bbSchedule;
	}

	@Override
	public List<BaseBallScheduleVO> selectSt_Kiwoom() {
		List<BaseBallScheduleVO> bbSchedule = bbDao.selectSt_Kiwoom();
		return bbSchedule;
	}

	@Override
	public List<BaseBallScheduleVO> selectKt() {
		List<BaseBallScheduleVO> bbSchedule = bbDao.selectKt();
		return bbSchedule;
	}

	@Override
	public List<BaseBallScheduleVO> selectSt_Kt() {
		List<BaseBallScheduleVO> bbSchedule = bbDao.selectSt_Kt();
		return bbSchedule;
	}

	@Override
	public List<BaseBallScheduleVO> selectHanwha() {
		List<BaseBallScheduleVO> bbSchedule = bbDao.selectHanwha();
		return bbSchedule;
	}

	@Override
	public List<BaseBallScheduleVO> selectSt_Hanwha() {
		List<BaseBallScheduleVO> bbSchedule = bbDao.selectSt_Hanwha();
		return bbSchedule;
	}

	@Override
	public List<BaseBallScheduleVO> selectSamsung() {
		List<BaseBallScheduleVO> bbSchedule = bbDao.selectSamsung();
		return bbSchedule;
	}

	@Override
	public List<BaseBallScheduleVO> selectSt_Samsung() {
		List<BaseBallScheduleVO> bbSchedule = bbDao.selectSt_Samsung();
		return bbSchedule;
	}

	@Override
	public List<BaseBallScheduleVO> selectNc() {
		List<BaseBallScheduleVO> bbSchedule = bbDao.selectNc();
		return bbSchedule;
	}

	@Override
	public List<BaseBallScheduleVO> selectSt_Nc() {
		List<BaseBallScheduleVO> bbSchedule = bbDao.selectSt_Nc();
		return bbSchedule;
	}

	@Override
	public List<BaseBallScheduleVO> selectLotte() {
		List<BaseBallScheduleVO> bbSchedule = bbDao.selectLotte();
		return bbSchedule;
	}

	@Override
	public List<BaseBallScheduleVO> selectSt_Lotte() {
		List<BaseBallScheduleVO> bbSchedule = bbDao.selectSt_Lotte();
		return bbSchedule;
	}

	@Override
	public List<BaseBallScheduleVO> selectAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public BaseBallScheduleVO findById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BaseBallScheduleVO> findByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BaseBallScheduleVO> findByDate(String date) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BaseBallScheduleVO> findByMatch(String match) {
		// TODO Auto-generated method stub
		return null;
	}
}
