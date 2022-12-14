package com.itkezi.letterbunker.auth;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.itkezi.letterbunker.persistance.UserDao;

/*
 * 프로젝트가 시작될때 자동으로 실행할 method, bean 정의하기
 */
@Service
public class BeanService {
	
	@Autowired
	private UserDao userDao;
	
	// 자동실행 하기 (꼼수)
	@Bean
	public void create_table() {
		userDao.create_user_table();
		userDao.create_auth_table();
	}
	
	@Bean
	public PasswordEncoder getPasswordEncoder() {
		return new BCryptPasswordEncoder();
	}
	
}