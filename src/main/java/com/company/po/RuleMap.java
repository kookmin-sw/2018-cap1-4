package com.company.po;

import java.util.Map;

import com.company.dto.DomainRuleVO;
import com.company.dto.PatientVO;

/**
 * 데이터베이스에 있는 Rule을 프로그램 실행시 Map 타입으로 불러옴
 * 프레임워크에 종속적이지 않은 일반 자바클래스를 POJO(Plain Old Java Object)	
 */
public class RuleMap {
	public Map<String, Object> ruleMap;
	
	public Map<String, Object> getRuleMap() {
		return ruleMap;
	}
	public void setRuleMap(Map<String, Object> ruleMap) {
		this.ruleMap = ruleMap;
	}
	
	public DomainRuleVO getRuleMatch(String key)
	{
		return (DomainRuleVO) ruleMap.get(key);
	}
	public boolean checkSymptom(PatientVO patient, DomainRuleVO domain) {
		
		int pLen = patient.symptomArr.size();
		int dLen = domain.symptoms.size();
		
		int andCount =0, orFlagNum =0, andFlagNum= domain.andSymptom; // 
		

		for(int target = 0; target < pLen; target++)
		{
			int middle=0, startIndex=0, endIndex = dLen-1;
			do // 이진검색
			{
				if(startIndex > endIndex) break;
				
				middle = (startIndex + endIndex)/2;
				if(domain.symptoms.get(middle).getSymptom().compareTo(patient.symptomArr.get(target).getSymptom()) == 0)
				{
					if(domain.symptoms.get(middle).getFlag() == 0) {
						
						orFlagNum++;
					}
					else andCount++;
					break;
				}
				else if(domain.symptoms.get(middle).getSymptom().compareTo(patient.symptomArr.get(target).getSymptom()) < 0) 
				{
					startIndex = middle+1;
				}
				else if(domain.symptoms.get(middle).getSymptom().compareTo(patient.symptomArr.get(target).getSymptom()) > 0)
				{
					endIndex = middle-1;
				}
			}
			while(true);
		}
		if(andFlagNum ==0 && orFlagNum > 0) return true; // 
		else if( orFlagNum == 0 && andFlagNum ==0 ) return false;
		else if( andCount == andFlagNum ) return true; // 
		else return false;
	}
}