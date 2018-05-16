package com.company.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.dto.MemberVO;
import com.company.dto.PatientVO;
import com.company.dto.WaitlistVO;
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

	@Override
	public void addWaitingList(PatientVO patient) throws Exception {
		// TODO Auto-generated method stub
		mapper.addWaitingList(patient);
	}

	@Override
	public void savePatient(PatientVO patient) throws Exception {
		// TODO Auto-generated method stub
		mapper.savePatient(patient);
	}

	@Override
	public void modifyPatient(PatientVO patient) throws Exception {
		// TODO Auto-generated method stub
		mapper.modifyPatient(patient);
	}

	@Override
	public List<MemberVO> selectMember() throws Exception {
		// TODO Auto-generated method stub
		return mapper.selectMember();
	}

	@Override
	public void insertEvalRule(MemberVO memberVO) throws Exception {
		// TODO Auto-generated method stub
		mapper.insertEvalRule(memberVO);
	}

	@Override
	public List<MemberVO> getSearchEvalRule(MemberVO member) throws Exception {
		// TODO Auto-generated method stub
		return mapper.getSearchEvalRule(member);
	}

	@Override
	public List<WaitlistVO> selectWaitList() throws Exception {
		// TODO Auto-generated method stub
		return mapper.selectWaitList();
	}
}
