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

import com.company.dto.GeneralSurveyVO;
import com.company.dto.PatientSymptomVO;
import com.company.dto.SurveyVO;
import com.company.service.RuleService;

@Controller
public class SurveyController {

	private static final Logger logger = LoggerFactory.getLogger(SurveyController.class);
	
	@Inject
	private RuleService ruleService;
	
	private static int typeNum;
	
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
		
		GeneralSurveyVO resultVO = ruleService.getTypeRule(typeNum);
		resultVO.setTypePicture("img/소음인 특징.jpg");
		resultVO.setHandPicture("img/소음인 혈자리.jpg");
		model.addAttribute("resultVO", resultVO);
		
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
		if(sum <= 10) return "/home/generalSurvey_B"; 
		else if(sum >= 12) return "/home/generalSurvey_C";
		else { // 판단 Rule
			int a = surveyResult.generalSurvey.get(4); // 5번 문제  
			int b = surveyResult.generalSurvey.get(14);
			int c = surveyResult.generalSurvey.get(20);
			System.out.println(a+" "+b+" "+c);
			// a,b,c 더한 값이 3점이면 양 판단 c 로 이동 //  0 이면 음 판단  b 로 이동
			// 2점이면 => 11번 문항이 1점이면 c로 넘어가고 그렇지 않으면 에러 
			// 1점일때 => 6번이 0점이면 b 로 그러허지 않으면 에러
			if(a+b+c == 3) { // 양 판단  c로 이동  
				return "/home/generalSurvey_C";
			}
			else if(a+b+c == 0) { // 더한 값이 0 점일 때 음 판단 b로 이
				return "/home/generalSurvey_B";
			}
			else if(a+b+c == 2 ) { // 2점 일때 
				int tmpC  = surveyResult.generalSurvey.get(10); // 11번 문항  
				if(tmpC == 1) return "/home/generalSurvey_C";
			}
			else if(a+b+c == 1) {
				int tmpB = surveyResult.generalSurvey.get(5); // 6번 문항 0 
				if(tmpB == 0) return "/home/generalSurvey_B";
			}
			return "/home/generalSurvey"; // 그렇지 않으면 에러처리  
		}
	}
	
	/**
	 * GeneralSurvey_B 설문 작성 완료 한 후 save 버튼 클릭시
	 */
	@RequestMapping(value ="/saveGeneralSurvey_B", method = RequestMethod.POST)
	public @ResponseBody String G_SurveyBsaveButton(@RequestBody SurveyVO surveyResult, Model model) throws Exception
	{
		logger.info("saveGeneralSurvey_B");
		GeneralSurveyVO resultVO = null;
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
			// typenumber == 4  // 소음인 판단  
			typeNum = 4;
		}
		else if(sum >= 10) {
			// ?????? 태음인 ? 
			typeNum = 2;
		}
		else { // 판단 Rule
			int a = surveyResult.generalSurvey_B.get(4); // 5 번문제 
			int b = surveyResult.generalSurvey_B.get(6);
			int c = surveyResult.generalSurvey_B.get(11);
			System.out.println(a+" "+b+" "+c);
			if(a+b+c >= 2 ) { // 태음인 확정       2
				typeNum = 2;
			}
			else if(a+b+c == 1 || a+b+c ==0) { // 소음인 확정  4    
				typeNum = 4;
			}
			// 더한 값이 2점이상  태음인 확점
			// 1 또는 0 소음인 확정  
		}
		
		return "/home/resultPage"; //결과 페이지 이동 
	}
	/**
	 * GeneralSurvey_C 설문 작성 완료 한 후 save 버튼 클릭시
	 */
	@RequestMapping(value ="/saveGeneralSurvey_C", method = RequestMethod.POST)
	public @ResponseBody String G_SurveyCsaveButton(@RequestBody SurveyVO surveyResult, Model model) throws Exception
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
		
		if( sum >= 6) { // 태양인 확정   1
			typeNum = 1;
		}
		else { // 소양인 확정 3 
			typeNum = 3;
		}
		// 6점 이상이면 태양인 확정
		// 6점 미만이면 소양인 확정   
		
		return "/home/resultPage"; //결과 페이지 이동 
	}

}



