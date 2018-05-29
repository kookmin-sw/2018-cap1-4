package com.company.dto;

import java.util.ArrayList;

public class DomainRuleVO {
	public String ruleID; 
	public int andSymptom; 
	public ArrayList<SymptomVO> symptoms; 
	public ArrayList<MedicineVO> medicines;
	
	public DomainRuleVO() {}
	
	public void countAndSymptom() 
	{
		andSymptom =0;
		for(int i=0; i< symptoms.size() ; i++)
		{
			if(symptoms.get(i).getFlag()==1) andSymptom++;
		}
	}
	public String getRuleID() {
		return ruleID;
	}
	public void setRuleID(String ruleID) {
		this.ruleID = ruleID;
	}
	public ArrayList<SymptomVO> getSymptoms() {
		return symptoms;
	}
	public void setSymptoms(ArrayList<SymptomVO> symptoms) {
		this.symptoms = symptoms;
	}

	public int getAndSymptom() {
		return andSymptom;
	}

	public void setAndSymptom(int andSymptom) {
		this.andSymptom = andSymptom;
	}

	public ArrayList<MedicineVO> getMedicines() {
		return medicines;
	}

	public void setMedicines(ArrayList<MedicineVO> medicines) {
		this.medicines = medicines;
	}
	
}