package com.company.mapper;

import java.util.List;

import com.company.dto.PatientVO;

public interface MemberMapper {
	
	// 환자 이름으로 검색
	public List<PatientVO> getSearchPatient(PatientVO patient) throws Exception;	
}
