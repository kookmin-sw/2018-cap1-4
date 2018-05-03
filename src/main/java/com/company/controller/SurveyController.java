package com.company.controller;


import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.company.dto.PatientSymptomVO;
import com.company.dto.SurveyVO;
import com.company.service.RuleService;

@Controller
public class SurveyController {

	private static final Logger logger = LoggerFactory.getLogger(SurveyController.class);
	
	@Inject
	private RuleService ruleService;
	
	/**
	 * GeneralPage 일반사용자 설문 페이지
	 */
	@RequestMapping(value="/generalSurvey")
	public String generalSurvey(Model model) throws Exception
	{
		logger.info("generalSurvey");
		
		return "generalSurvey";
	}
	/**
	 * GeneralPage B 일반사용자 설문 페이지
	 */
	@RequestMapping(value="/generalSurvey_B")
	public String generalSurvey_B() throws Exception
	{
		logger.info("generalSurvey_B");
		
		return "generalSurvey_B";
	}
	/**
	 * GeneralPage C 일반사용자 설문 페이지
	 */
	@RequestMapping(value="/generalSurvey_C")
	public String generalSurvey_C(Model model) throws Exception
	{
		logger.info("generalSurvey_C");
		
		return "generalSurvey_C";
	}
	/**
	 * ResultPage 일반사용자 모든 설문 작성 완료 
	 */
	@RequestMapping(value="/resultPage")
	public String resultPage(Model model) throws Exception
	{
		logger.info("resultPage");
		
		return "resultPage";
	}
	/**
	 * HospitalSurveyPage 병원 설문지 페이지
	 */
	@RequestMapping(value="/hospitalSurvey")
	public String hospitalSurvey(Model model) throws Exception
	{
		logger.info("hospitalSurvey");
		
		return "hospitalSurvey";
	}
	
	/**
	  * HospitalSurvey 설문 작성 완료 한 후 save 버튼 클릭시
	  */
	@RequestMapping(value ="/saveHospitalSurvey", method = RequestMethod.POST)
	public void H_SurveySaveButton(@RequestBody SurveyVO surveyResult) throws Exception
	{
		logger.info("saveHospitalSurvey");
		
		List<Map<String,Object>> surveyMap = surveyResult.getSurveyMap(); // 설문결과 모두 가져옴 
		//System.out.println("////////////"+surveyResult.getpNum());
		for(Map<String,Object> map : surveyMap)
		{
			int num =0;
			if( map.get("sum") != null) // 예외 처리 (라디오 버튼 체크 했을 경우)
			{
				num = (int) map.get("sum");
			}
			if(num == 0) continue; // 수치가 낮은 값은 제외 // 임의로 일단 설정 태우가 보고 수정 할것
			System.out.println(map.get("symptom")+" "+map.get("sum")); // 체크 확인
			
			// survey 값을 증상과 맵핑 , symptomName은 DB updatesymptom 테이블에 들어
			String symptomName = surveyResult.fromSurveyToSymptom((String)map.get("symptom")); 
			
			PatientSymptomVO vo = new PatientSymptomVO(); // 객체로 insert
			vo.setDegree(num); // degree
			vo.setpNum(surveyResult.getpNum()); // 환자 번호
			vo.setSymptom(symptomName);
			vo.setVisitDate(surveyResult.getVisitDate()); // 설문한 날짜
			surveyResult.symptomArr.add(vo);
			
			System.out.println("///////symptomName"+symptomName);
		}
		
		//최종적으로 증상들을 updateSymptom 테이블로 insert
		for(PatientSymptomVO vo : surveyResult.symptomArr)
		{
			ruleService.addSymptom(vo);
		}
	}
	
	
	/**
	 * GeneralSurvey 설문 작성 완료 한 후 save 버튼 클릭시
	 */
	@RequestMapping(value ="/saveGeneralSurvey", method = RequestMethod.POST)
	public @ResponseBody String G_SurveySaveButton(@RequestBody SurveyVO surveyResult) throws Exception
	{
		logger.info("saveGeneralSurvey");
		int sum =0;
		for(Integer val : surveyResult.generalSurvey) 
		{
			// receive the value from 0 index sequentially in the array (0 ~ 21)
			System.out.print(val+" "); // confirm message
			if(val != null)
			{
				sum += val;
			}
		}
		System.out.println("\ntotalSum : "+sum);
		if(sum <= 10)return "/home/generalSurvey_B"; 
		else if(sum >= 12) return "/home/generalSurvey_C";
		else { // 판단 Rule
			int a = surveyResult.generalSurvey.get(3); // 4번 문제  
			int b = surveyResult.generalSurvey.get(13);
			int c = surveyResult.generalSurvey.get(19);
			System.out.println(a+" "+b+" "+c);
			return "/home/generalSurvey";
		}
	}
	
	/**
	 * GeneralSurvey_B 설문 작성 완료 한 후 save 버튼 클릭시
	 */
	@RequestMapping(value ="/saveGeneralSurvey_B", method = RequestMethod.POST)
	public @ResponseBody String G_SurveyBsaveButton(@RequestBody SurveyVO surveyResult) throws Exception
	{
		logger.info("saveGeneralSurvey_B");
		int sum =0;
		for(Integer val : surveyResult.generalSurvey_B) 
		{
			// receive the value from 0 index sequentially in the array (0 ~ 17)
			System.out.print(val+" "); // confirm message
			if(val != null)
			{
				sum += val;
			}
		}
		System.out.println("\ntotalSum : "+sum);
		if(sum <= 8) {
			// 디비 만들어주면 결과 하면에 띄워줄께  // 소음인 판단  
		}
		else if(sum >= 10) {
			
		}
		else { // 판단 Rule
			int a = surveyResult.generalSurvey_B.get(3); // 4번 문제  
			int b = surveyResult.generalSurvey_B.get(5);
			int c = surveyResult.generalSurvey_B.get(10);
			System.out.println(a+" "+b+" "+c);
			
		}
		return "/home/resultPage"; //결과 페이지 이동 
	}
	/**
	 * GeneralSurvey_B 설문 작성 완료 한 후 save 버튼 클릭시
	 */
	@RequestMapping(value ="/saveGeneralSurvey_C", method = RequestMethod.POST)
	public @ResponseBody String G_SurveyCsaveButton(@RequestBody SurveyVO surveyResult) throws Exception
	{
		logger.info("saveGeneralSurvey_C");
		int sum =0;
		for(Integer val : surveyResult.generalSurvey_C) 
		{
			// receive the value from 0 index sequentially in the array (0 ~ 9)
			System.out.print(val+" "); // confirm message
			if(val != null)
			{
				sum += val;
			}
		}
		System.out.println("\ntotalSum : "+sum);
		
		//위와 같은 방식으로 조건 만들기 
		
		return "/home/resultPage"; //결과 페이지 이동 
	}

}



