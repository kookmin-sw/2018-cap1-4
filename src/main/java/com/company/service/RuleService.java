package com.company.service;

import com.company.dto.PatientVO;

public interface RuleService {
	
	// 설문으로 나온 증상과 기본적인 세부사항 검색 (환자 번호를 통해서)
	public PatientVO getPatientSymptoms(String pNumber) throws Exception;
}
