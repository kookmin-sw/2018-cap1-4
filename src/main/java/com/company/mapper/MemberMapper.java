package com.company.mapper;

import java.util.List;

import com.company.dto.MemberVO;
import com.company.dto.PatientVO;

public interface MemberMapper {
	
	// 환자 이름으로 검색
	public List<PatientVO> getSearchPatient(PatientVO patient) throws Exception;
	
	// 대기자 명단에 추가 ( DB : 대기자 명단 테이블)
	public void addWaitingList(PatientVO patient) throws Exception;
	
	// reception Page에서 저장버튼 클릭했을 경우 환자 저장 (기존의 데이터 없을경우 patient table 추가)
	public void savePatient(PatientVO patient) throws Exception;
	
	// reception Page에서 저장버튼 클릭했을 경우 환자 저장 (기존의 데이터 있을경우 기존 patient table 수정)
	public void modifyPatient(PatientVO patient) throws Exception;
	
	// select * from evalRule ( all evaluated Rule)
	public List<MemberVO> selectMember() throws Exception;
	
	// insert evaluated rule into db
	public void insertEvalRule(MemberVO memberVO) throws Exception;
}
