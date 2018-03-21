package com.company.dto;

import java.util.ArrayList;

/**
 * 처방 군 ( 각각 처방약 리스트가 포함되어 있음)
 */
public class PrescriptionGroupVO {
	
	public ArrayList<PrescriptionVO> prescrList;
	public String prescrGroup;
	
	public PrescriptionGroupVO() {
	}

	public PrescriptionGroupVO(String prescrGroup)
	{
		prescrList = new ArrayList<PrescriptionVO>();
		this.prescrGroup = prescrGroup;
	}
	public ArrayList<PrescriptionVO> getPrescrList() {
		return prescrList;
	}

	public void setPrescrList(ArrayList<PrescriptionVO> prescrList) {
		this.prescrList = prescrList;
	}

	public String getPrescrGroup() {
		return prescrGroup;
	}

	public void setPrescrGroup(String prescrGroup) {
		this.prescrGroup = prescrGroup;
	}
}