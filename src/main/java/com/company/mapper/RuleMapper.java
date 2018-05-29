package com.company.mapper;

import java.util.List;

import com.company.dto.DomainRuleVO;
import com.company.dto.GeneralSurveyVO;
import com.company.dto.MedicineVO;
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
	
	// DB에서 모든 Rule을 불러와서 검사할 준비
	public List<DomainRuleVO> selectDomain() throws Exception;
	
	// 사상체질 룰 결과 select 타입 번호를 통해서 검색  
	public GeneralSurveyVO getTypeRule(int typenumber) throws Exception;
	
	// 처방약을 기준으로 환자에게 보여줄 사진 경로를 가져온다. 
	public MedicineVO getImageDirectory(String medicine) throws Exception;
}
