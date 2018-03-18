package com.company.dto;


import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;

public class PatientVO {
	private String pNumber; // 환자 번호
	private String pName; // 환자 이름
	private int age; // 세부사항 더 추가 예정
	private String visitDate; // 방문날짜
	
	public ArrayList<PatientSymptomVO> symptomArr; // 증상들을 drools 로 진단하기 위해 arraylist 로 관리
	public PatientDiagnosisVO diagnosis;
	public PatientVO()
	{
		Calendar cal= Calendar.getInstance();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd"); //"yyyy:MM:dd-HH:mm:ss"
		visitDate = dateFormat.format(cal.getTime()); // 현재는 여기서 진단 날짜를 만들었으나 추후 대기 명단 환자를 생성할때 날짜를 기록하고 불러와야함
		
		symptomArr = new ArrayList<PatientSymptomVO>();
		diagnosis = new PatientDiagnosisVO(visitDate);
	}
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

	public ArrayList<PatientSymptomVO> getSymptomArr() {
		return symptomArr;
	}

	public void setSymptomArr(ArrayList<PatientSymptomVO> symptomArr) {
		this.symptomArr = symptomArr;
	}
	public PatientDiagnosisVO getDiagnosis() {
		return diagnosis;
	}
	public void setDiagnosis(PatientDiagnosisVO diagnosis) {
		this.diagnosis = diagnosis;
	}
	public String getVisitDate() {
		return visitDate;
	}
	public void setVisitDate(String visitDate) {
		this.visitDate = visitDate;
	}
}