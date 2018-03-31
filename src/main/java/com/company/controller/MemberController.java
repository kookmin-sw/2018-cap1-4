package com.company.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.company.dto.PatientVO;
import com.company.service.MemberService;

@Controller
public class MemberController {
	
	@Inject
	private MemberService service;
	
	/**
	  * 검색란에 이름 검색
	 * @throws Exception
	  */
	 @RequestMapping(value ="/searchPatientInfo", method = RequestMethod.GET)
	 public @ResponseBody List<PatientVO> searchPatientInfo(PatientVO patient) throws Exception
	 {
		List<PatientVO> list = service.getSearchPatient(patient); // 조건에 만족하는 환자 검색
		for(PatientVO vo : list) // 만족하는 환자 정보 확인
		{
			System.out.println("/////////////"+vo.getpName()+vo.getpNumber() + " "+ vo.symptomArr.size());
		}
		return list;
	 }
}
