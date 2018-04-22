package com.company.controller;


import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.company.dto.PatientSymptomVO;
import com.company.dto.SurveyVO;
import com.company.service.RuleService;

@Controller
public class SurveyController {

	private static final Logger logger = LoggerFactory.getLogger(SurveyController.class);
	
	@Inject
	private RuleService ruleService;
	/**
	  * 대기자 명단에 추가
	  */
	@RequestMapping(value ="/saveHospitalSurvey", method = RequestMethod.POST)
	public void H_SurveySaveButton(@RequestBody SurveyVO surveyResult) throws Exception
	{
		logger.info("saveHospitalSurvey");
		
		List<Map<String,Object>> surveyMap = surveyResult.getSurveyMap();
		System.out.println("////////////"+surveyMap.size());
		for(Map<String,Object> map : surveyMap)
		{
			int num =0;
			if( map.get("sum") != null) // 예외 처리 (라디오 버튼 체크 했을 경우)
			{
				num = (int) map.get("sum");
			}
			if(num == 0) continue; // 수치가 낮은 값은 제외 // 임의로 일단 설정 태우가 보고 수정 할것
			System.out.println(map.get("symptom")+" "+map.get("sum")); // 체크 확인
			
			String symptomName = surveyResult.fromSurveyToSymptom((String)map.get("symptom")); // survey 값을 증상과 맵핑
			
			PatientSymptomVO vo = new PatientSymptomVO();
			vo.setDegree(num); // 임시로 저장
			vo.setpNum("111"); // 임시로 저장
			vo.setSymptom(symptomName);
			vo.setVisitDate(surveyResult.getVisitDate());
			surveyResult.symptomArr.add(vo);
			
			System.out.println("///////symptomName"+symptomName);
		}
		
		//증상들을 updateSymptom 테이블로 insert
		for(PatientSymptomVO vo : surveyResult.symptomArr)
		{
			ruleService.addSymptom(vo);
		}
	}
	
}
