package com.company.dto;

public class DoctorVO {
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
