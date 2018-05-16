package com.company.controller;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.company.dto.MemberVO;
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
	 *  [ DefaultPage ]
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
	 *  [ ReceptionPage ]
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
	 public @ResponseBody String savePatientInfo(@RequestBody PatientVO patient) throws Exception
	 {
		 logger.info("savePatientInfo[receptionPage]");
		 
		 // 추후 에러처리 하기 번호, 이름, 나이, 성별 등에 대해서 형식에 맞게 들어왔는지 (추후 좀더 디테일하게 하기)
 		 if(patient.getpNumber().length() < 1 || patient.getAge() == 0 || patient.getpName().length() < 1 || patient.getSex().length() < 1)
 		 {
 			logger.info("savePatientInfo[receptionPage] 예외처리");
 			// return new ResponseEntity<PatientVO>(patient, HttpStatus.NOT_ACCEPTABLE);
 		 }
		 PatientVO vo = ruleService.getPatientSymptoms(patient.getpNumber());
		 
		 if(vo == null) // 새로운 환자이면 환자테이블에 추가
		 {
			 logger.info("savePatientInfo[receptionPage] 신규접수");
			 memberService.savePatient(patient);
			 memberService.addWaitingList(patient); // 대기자 명단 추가 
		 }
		 else //수정일 경우
		 {
			 logger.info("savePatientInfo[receptionPage] 환자 세부사항 수정");
			 memberService.modifyPatient(patient);
			 memberService.addWaitingList(patient); // 대기자 명단 추가  
		 }
		 //return new ResponseEntity<PatientVO>(patient, HttpStatus.OK);
		 return "/home/receptionPage";
	 }
	 
	/**
	 *  평가페이지 클릭시 디비에 저장되어 있는 룰 평가된 리스트 불러옴  
	 */
	@RequestMapping(value="/evalTablePage")
	public String evaluateRule(Model model) throws Exception
	{
		logger.info("evalTablePage");
		List<MemberVO> memberList = memberService.selectMember();
		
		model.addAttribute("memberList", memberList);
		
		return "evalTablePage";
	}
	
	/**
	 * 평가된 룰 검색기능 
	 */
	@RequestMapping(value ="/searchEvalRule", method = RequestMethod.GET)
	public @ResponseBody List<MemberVO> searchEvalRule(MemberVO member) throws Exception
	{
		logger.info("searchEvalRule");
		List<MemberVO> list = memberService.getSearchEvalRule(member);
		return list;
	}
}
