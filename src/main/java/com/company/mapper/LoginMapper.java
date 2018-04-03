package com.company.mapper;


import java.sql.Date;
import java.util.Map;

import com.company.dto.DoctorVO;

public interface LoginMapper {
	
	// Login 성공하면, 유저 정보를 담고 있는 DoctorVO 객체를 반환한다.
	public DoctorVO login(DoctorVO dto);
	
	// 자동로그인 체크한 경우에 사용자 테이블에 세션과 유효시간을 저장 
	public void keepLogin(Map map);
	
	// 이전에 로그인 한적이 있는지, 즉 유효시간이 넘지 않는 세션을 가지고 있는지 체크
	public DoctorVO checkUserWithSessionKey(String sessionId);
}
