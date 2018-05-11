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
	public List<Map<String, Object>> surveyMap; // key value (hospital survey에서 받아옴 ) 
	public List<Integer> generalSurvey; // generalSurvey 에서 받아 
	public List<Integer> generalSurvey_B;
	public List<Integer> generalSurvey_C;
	
	public SurveyVO()
	{
		symptomArr = new ArrayList<PatientSymptomVO>();
		surveyMap = new ArrayList<Map<String,Object>>();
		generalSurvey = new ArrayList<Integer>();
		generalSurvey_B = new ArrayList<Integer>();
		generalSurvey_C = new ArrayList<Integer>();
		
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
			case "head_1": symptom = "두통-터질듯함";
							break;
			case "head_2": symptom = "두통-압박감";
							break;
			case "head_4": symptom = "두통-지끈";			
							break;
			case "whirl_1": symptom = "어지러움-핑돈다";
							break;
			case "whirl_4": symptom = "어지러움-저혈압";
			break;
			case "whirl_5": symptom = "어지러움-빈혈성";
			break;
			case "mouth_1": symptom = "구취-항상";
			break;
			case "mouth_2": symptom = "구취-아침기상시";
			break;
			case "mouth)5": symptom = "구취-식후";
			break;
			case "indigestion_1": symptom = "소화불량";
			break;
			case "frustrated_1": symptom = "명치답답-항상";
			break;
			case "frustrated_3": symptom = "명치답답-공복";
			break;
			case "ache_1": symptom = "명치통증-뻐근";
			break;
			case "ache_2": symptom = "명치통증-콕콕찌름";
			break;
			case "ache_3": symptom = "명치통증-쥐어짠다";
			break;
			case "impact_1": symptom = "체함";
			break;
			case "gas_1": symptom = "가스-상복부";
			break;
			case "gas_2": symptom = "가스-하복부";
			break;
			case "burb_1": symptom = "트림-항상";
			break;
			case "burb_2": symptom = "트림-공복";
			break;
			case "burb_3": symptom = "트림-식후";
			break;
			case "burb_4": symptom = "트림-급식";
			break;
			case "burb_5": symptom = "트림-과식";
			break;
			case "brash_1": symptom = "속쓰림-항상";
			break;
			case "brash_2": symptom = "속스림-공복";
			break;
			case "brash_3": symptom = "속쓰림-식후";
			break;
			case "brash_4": symptom = "속쓰림-수면중/새벽";
			break;
			case "brash_5": symptom = "속쓰림-아침기상시";
			break;
			case "brash_6": symptom = "속쓰림-가슴";
			break;
			case "backflow_1": symptom = "역류-식후";
			break;
			case "mass_1": symptom = "메스꺼움";
			break;
			case "colic_1": symptom = "복통-상복부";
			break;
			case "colic_2": symptom = "복통-하복부";
			break;
			case "colic_3": symptom = "복통-사르르";
			break;
			case "colic_4": symptom = "복통-옆구리";
			break;
			case "colic_5": symptom = "복통-뻐근";
			break;
			case "colic_8": symptom = "복통-쥐어잔다-찬음식";
			break;
			case "tired_1": symptom = "피로감";
			break;
			case "forget_1": symptom = "건망증";
			break;
			case "eyepain_1": symptom = "안구통증";
			break;
			case "dryeye_1": symptom = "안구건조";
			break;
			case "anxiety_1": symptom = "불안감";
			break;
			case "pounding_1": symptom = "가슴-두근거림";
			break;
			case "chest_1": symptom = "가슴-답답";
			break;
			case "throat_1": symptom = "목이물감-항상";
			break;
			case "back_1": symptom = "등뻐근";
			break;
			case "upside_1": symptom = "상열감";
			break;
			case "skin_1": symptom = "피부이상-두드러기";
			break;
			case "skin_2": symptom = "피부이상-가려움";
			break;
			case "stiff_1": symptom = "담결림";
			break;
			case "neck_1": symptom = "뒷목이빳빳하고결림";
			break;
			case "shoulder_1": symptom = "어깨결림";
			break;
			case "pooh_1": symptom = "변-딱딱";
			break;
			case "pooh_2": symptom = "변-변비";
			break;
			case "pooh_3": symptom = "변-무른변";
			break;
			case "pooh_4": symptom = "변-설사";
			break;
			case "pooh_5": symptom = "변-굳은변";
			break;
			case "pooh_7": symptom = "변-잔변감";
			break;
			case "womb_1": symptom = "냉/대하(장궁질환)";
			break;
			case "mouthstatus_1": symptom = "입-구건";
			break;
			case "mouthstatus_2": symptom = "입-인건";
			break;
			case "mouthstatus_3": symptom = "입_쓴맛";
			break;
		}
		
		return symptom;
	}
}
