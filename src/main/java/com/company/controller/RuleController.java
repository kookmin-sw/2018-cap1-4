package com.company.controller;

import java.util.List;

import javax.annotation.PostConstruct;
import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.company.drools.DroolsSpringTest;
import com.company.dto.PatientSymptomVO;
import com.company.dto.PatientVO;
import com.company.dto.SymptomVO;
import com.company.service.MemberService;
import com.company.service.RuleService;

@Controller
public class RuleController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Inject
	private RuleService ruleService;
	@Inject
	private MemberService service;
	
	private DroolsSpringTest drools;
	
	private PatientVO patient;
	private PatientSymptomVO symptomVO;
	
	@PostConstruct // 생성자 annotation
	public void initialize(){ 
		
		patient = new PatientVO();
	}
	
	/**
	 * 환자 번호를 통해서 설문의 결과인 증상들을 검색 또한 환자 세부사항도 같이 refresh
	 * @throws Exception 
	 */
	 @RequestMapping(value ="/getPatientSymptoms", method = RequestMethod.GET)
	 public @ResponseBody PatientVO getPatientSymptoms(@RequestParam("pNumber") String pNumber) throws Exception
	 {
		System.out.println("/////////////////////"+pNumber);
		patient = ruleService.getPatientSymptoms(pNumber); // 환자 번호로 증상 검색
		
		logger.info("환자 검색확인: "+ patient.getpName()+ " "+patient.symptomArr.size());
		for(int i=0; i< patient.symptomArr.size(); i++) {
			
			System.out.println(patient.symptomArr.get(i).getSymptom());
		}
		return patient;
	 }
	 
	 /**
	  * DB에서 증상이름으로 증상명 검색 
	  * @throws Exception 
	  */
	@RequestMapping(value ="/searchSymptom", method = RequestMethod.GET)
	public @ResponseBody List<SymptomVO> searchSymptom(SymptomVO symptom) throws Exception
	{
		List<SymptomVO> list = ruleService.getSearchSymptom(symptom);
		return list;
	}
}
