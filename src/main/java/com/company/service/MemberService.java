package com.company.service;

import java.util.List;

import com.company.dto.PatientVO;

public interface MemberService {
	
	//환자 검색
	public List<PatientVO> getSearchPatient(PatientVO patient) throws Exception;
}
