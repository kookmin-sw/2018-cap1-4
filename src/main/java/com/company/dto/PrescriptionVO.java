package com.company.dto;

/**
 * 
 * 각 처방군에 속하고 있는 처방약을 클래스로 관리, 첩약내에 처방약들을 관리 <-> MedicineVO 와 구분(단순처방약 포함하기 위해 생성
 *
 */
public class PrescriptionVO implements Cloneable {
	public String prescrGroup; // 첩약 이름
	public String medicine;// 처방약
	public int defaultValue; // 기본 값
	public Object clone() {
		try {
			PrescriptionVO obj = (PrescriptionVO)super.clone();
			return obj;
		} catch (CloneNotSupportedException e) {
			throw new InternalError(e.getMessage());
		}
	}
	public String getPrescrGroup() {
		return prescrGroup;
	}
	public void setPrescrGroup(String prescrGroup) {
		this.prescrGroup = prescrGroup;
	}
	public String getMedicine() {
		return medicine;
	}
	public void setMedicine(String medicine) {
		this.medicine = medicine;
	}
	public int getDefaultValue() {
		return defaultValue;
	}
	public void setDefaultValue(int defaultValue) {
		this.defaultValue = defaultValue;
	}
	
}