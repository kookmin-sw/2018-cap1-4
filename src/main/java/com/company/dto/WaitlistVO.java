package com.company.dto;

/**
 * 
 * 대기환자를 관리하는 클래스
 *
 */

public class WaitlistVO {
	private String pNumber; // 환자 번호
	private String pName; // 환자 이름
	private int age; // 
	private String sex;
	public String getpNumber() {
		return pNumber;
	}
	public void setpNumber(String pNumber) {
		this.pNumber = pNumber;
	}
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
}