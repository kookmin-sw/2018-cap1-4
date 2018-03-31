package com.company.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.dto.PatientVO;
import com.company.mapper.MemberMapper;
import com.company.service.MemberService;

@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	private MemberMapper mapper;
	
	@Override
	public List<PatientVO> getSearchPatient(PatientVO patient) throws Exception {
		// TODO Auto-generated method stub
		return mapper.getSearchPatient(patient);
	}
}
