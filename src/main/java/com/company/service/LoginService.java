package com.company.service;

import com.company.dto.DoctorVO;

public interface LoginService {
	
	// Login 성공하면, 유저 정보를 담고 있는 DoctorVO 객체를 반환한다.
	public DoctorVO login(DoctorVO dto);

}
