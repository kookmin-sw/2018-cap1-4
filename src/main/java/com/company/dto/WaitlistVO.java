package com.company.dto;

/**
 * 
 * 대기환자를 관리하는 클래스
 *
 */

public class WaitlistVO {
	private int pNumber;
	
	public int getPatient(){
		return pNumber;
	}
	
	public void setPatient(int pNumber){
		this.pNumber = pNumber;
	}
}