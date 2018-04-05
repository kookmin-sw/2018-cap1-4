package com.company.mapper;

import java.util.List;

import com.company.dto.PatientSymptomVO;
import com.company.dto.PatientVO;
import com.company.dto.SymptomVO;

public interface RuleMapper {
		
	// 설문으로 나온 증상과 기본적인 세부사항 검색 (환자 번호를 통해서)
	public PatientVO getPatientSymptoms(String pNumber) throws Exception;
	
	// DB에서 증상 검색하여 자동완성기능 제공
	public List<SymptomVO> getSearchSymptom(SymptomVO symptom) throws Exception;
	
	// 증상 삭제
	public void deleteSymptom(PatientSymptomVO symptomVO) throws Exception;
		
	// 증상 추가
	public void addSymptom(PatientSymptomVO symptom) throws Exception;
}
