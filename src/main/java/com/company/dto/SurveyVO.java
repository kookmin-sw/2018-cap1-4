package com.company.dto;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Map;

/**
 * 
 * 설문지를 작성한 내용을 받아와서 updateSymptom 테이블에 insert
 *
 */
public class SurveyVO {
	public ArrayList<PatientSymptomVO> symptomArr; // 설문한내용을 바탕으로 증상 추출 // 태우가 마무리
	private String pNum;
	private String visitDate; // 설문한 날짜
	List<Map<String, Object>> surveyMap; // key value 
	public SurveyVO()
	{
		symptomArr = new ArrayList<PatientSymptomVO>();
		surveyMap = new ArrayList<Map<String,Object>>();
		
		Calendar cal= Calendar.getInstance();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd"); //"yyyy:MM:dd-HH:mm:ss"
		visitDate = dateFormat.format(cal.getTime()); // 현재 날짜로 survey 작성날짜 생성
	}
	
	public ArrayList<PatientSymptomVO> getSymptomArr() {
		return symptomArr;
	}
	public void setSymptomArr(ArrayList<PatientSymptomVO> symptomArr) {
		this.symptomArr = symptomArr;
	}
	public String getpNum() {
		return pNum;
	}
	public void setpNum(String pNum) {
		this.pNum = pNum;
	}
	public String getVisitDate() {
		return visitDate;
	}
	public void setVisitDate(String visitDate) {
		this.visitDate = visitDate;
	}
	public List<Map<String, Object>> getSurveyMap() {
		return surveyMap;
	}
	public void setSurveyMap(List<Map<String, Object>> surveyMap) {
		this.surveyMap = surveyMap;
	}
	
	///////////////////////////////////////////////////////////////////////////////////////////////////////////
	public String fromSurveyToSymptom(String str) // survey와 symptom mapping 작업 // 태우가 작업할것//////////////////
	{
		String symptom="";
		switch(str)
		{
			case "head_1": symptom = "head";
							break;
			case "head_2": symptom = "head2";
							break;
		}
		
		return symptom;
	}
}
