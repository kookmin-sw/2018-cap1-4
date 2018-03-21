package com.company.dto;

/**
 * 
 * 각각 룰에 해당하는 증상들을 관리하는 클래스 (룰에 해당하는 증상) => PatientSymptomVO 와 비교
 *
 */
public class SymptomVO {
	private String ruleID;
	private String symptom;
	private int flag; // flag == 1 (반드시 존재 해야하는 증상)   flag == 0 (or 연산 확인하기 위한 flag)
	private String sRegion; // 증상에 대한 신체부위
	private int min;
	private int max;
	public SymptomVO() 
	{	
	}
	public String getRuleID() {
		return ruleID;
	}
	public void setRuleID(String ruleID) {
		this.ruleID = ruleID;
	}
	public String getSymptom() {
		return symptom;
	}
	public void setSymptom(String symptom) {
		this.symptom = symptom;
	}
	public int getFlag() {
		return flag;
	}
	public void setFlag(int flag) {
		this.flag = flag;
	}
	public String getsRegion() {
		return sRegion;
	}
	public void setsRegion(String sRegion) {
		this.sRegion = sRegion;
	}
	public int getMin() {
		return min;
	}
	public void setMin(int min) {
		this.min = min;
	}
	public int getMax() {
		return max;
	}
	public void setMax(int max) {
		this.max = max;
	}
}