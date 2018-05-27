package com.company.service;

import java.util.List;

import com.company.dto.MemberVO;
import com.company.dto.PatientVO;
import com.company.dto.WaitlistVO;

public interface MemberService {
	
	//환자 검색
	public List<PatientVO> getSearchPatient(PatientVO patient) throws Exception;
	
	// 대기 환자 이름으로 검색
	public List<WaitlistVO> getSearchWaitingPatient(WaitlistVO patient) throws Exception;
	
	// 대기환자 환자 번호로 기존에 있던 환자 인지 검색
	public WaitlistVO getWaitPatient(WaitlistVO patient) throws Exception;
	
	// 대기자 명단에 추가
	public void addWaitingList(WaitlistVO patient) throws Exception;
	
	// 대기자 명단 불러옴  
	public List<WaitlistVO> selectWaitList() throws Exception;
	
	// reception Page에서 저장버튼 클릭했을 경우 환자 저장 (기존의 데이터 없을경우 patient table 추가)
	public void savePatient(PatientVO patient) throws Exception;
	
	// reception Page에서 저장버튼 클릭했을 경우 환자 저장 (기존의 데이터 있을경우 기존 patient table 수정)
	public void modifyPatient(PatientVO patient) throws Exception;
	
	// select * from evalRule ( all evaluated Rule)
	public List<MemberVO> selectMember() throws Exception;
	
	// insert evaluated rule into db
	public void insertEvalRule(MemberVO memberVO) throws Exception;
	
	// search evaluated rule list
	public List<MemberVO> getSearchEvalRule(MemberVO member) throws Exception;
}
