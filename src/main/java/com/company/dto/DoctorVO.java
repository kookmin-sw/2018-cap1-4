package com.company.dto;

public class DoctorVO {
	private String userId;
	private String userPw;
	
	private boolean useCookie;
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
