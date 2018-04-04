package com.company.dto;

import java.io.Serializable;

/**
 * 자바 직렬화란 자바 시스템 내부에서 사용되는 객체 또는 데이터를 외부의 자바 시스템에서도
 * 사용할 수 있도록 바이트 형태로 변환하는 기술과 바이트로 변환된 데이터를 다시 객체로 변환(역직렬화)
 * 세션에 추가되는 모든 attribute들은 Serializable 인터페이스를 구현해야함
 */
public class DoctorVO implements Serializable{
	private String userId;
	private String userPw;
	
	private boolean useCookie; // ID 기억 체크박스를 체크했을때
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPw() {
		return userPw;
	}
	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}
	public boolean isUseCookie() {
        return useCookie;
    }
    public void setUseCookie(boolean useCookie) {
        this.useCookie = useCookie;
    }
}
