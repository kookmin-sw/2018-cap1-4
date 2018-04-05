package com.company.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.dto.PatientVO;
import com.company.mapper.RuleMapper;
import com.company.service.RuleService;

@Service
public class RuleServiceImpl implements RuleService{
	
	@Autowired
	private RuleMapper mapper;

	@Override
	public PatientVO getPatientSymptoms(String pNumber) throws Exception {
		// TODO Auto-generated method stub
		return mapper.getPatientSymptoms(pNumber);
	}
}
