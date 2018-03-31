package com.company.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.dto.DoctorVO;
import com.company.mapper.LoginMapper;
import com.company.service.LoginService;

@Service
public class LoginServiceImpl implements LoginService{

	@Autowired
	LoginMapper mapper;
	
	@Override
	public DoctorVO login(DoctorVO dto) {
		// TODO Auto-generated method stub
		return mapper.login(dto);
	}

}
