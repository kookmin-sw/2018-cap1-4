package com.company.controller;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.company.dto.PatientVO;
import com.company.service.MemberService;
import com.company.service.RuleService;

@Controller
public class MemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Inject
	private MemberService memberService;
	@Inject
	private RuleService ruleService;
	/**
	  * 검색란에 이름 검색
	 *  DefaultPage
	  */
	 @RequestMapping(value ="/searchPatientInfo", method = RequestMethod.GET)
	 public @ResponseBody List<PatientVO> searchPatientInfo(PatientVO patient) throws Exception
	 {
		 logger.info("searchPatientInfo[defaultPage]");
		List<PatientVO> list = memberService.getSearchPatient(patient); // 조건에 만족하는 환자 검색
		for(PatientVO vo : list) // 만족하는 환자 정보 확인
		{
			System.out.println("/////////////"+vo.getpName()+vo.getpNumber()+ " "+ vo.symptomArr.size());
		}
		return list;
	 }
	 
	/**
	 * 검색란에 이름 검색
	 *  ReceptionPage
	 */
	 @RequestMapping(value ="/searchReceptionInfo", method = RequestMethod.GET)
	 public @ResponseBody List<PatientVO> searchReceptionInfo(PatientVO patient) throws Exception
	 {
		logger.info("searchReceptionInfo[receptionPage]");
		List<PatientVO> list = memberService.getSearchPatient(patient); // 조건에 만족하는 환자 검색
		
		return list;
	 }
	 
	 /**
	  * 대기자 명단에 추가
	  */
	 @RequestMapping(value ="/addWaitingList", method = RequestMethod.POST)
	 public void addWaitingList(@RequestBody PatientVO patient) throws Exception
	 {
		 logger.info("addWaitingList[receptionPage]");
		 memberService.addWaitingList(patient);
	 }
	 
	 /**
	  * 저장 버튼을 클릭했을때 patient table 저장 하던지 기존 데이터가 있을때는 수정기능 제공 
	  */
	 @RequestMapping(value ="/savePatientInfo", method = RequestMethod.POST)
	 public void savePatientInfo(@RequestBody PatientVO patient) throws Exception
	 {
		 logger.info("savePatientInfo[receptionPage]");
		 
		 // 추후 에러처리 하기 번호, 이름, 나이, 성별 등에 대해서 형식에 맞게 들어왔는지
 		 
		 PatientVO vo = ruleService.getPatientSymptoms(patient.getpNumber());
		 
		 if(vo == null) // 새로운 환자이면 환자테이블에 추가
		 {
			 logger.info("savePatientInfo[receptionPage] 신규접수");
			 memberService.savePatient(patient);
		 }
		 else //수정일 경우
		 {
			 logger.info("savePatientInfo[receptionPage] 환자 세부사항 수정");
			 memberService.modifyPatient(patient);
		 }
	 }
	 
}
