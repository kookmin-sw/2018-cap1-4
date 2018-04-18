package com.company.drools;

import java.util.Map;

import javax.inject.Inject;

import org.drools.runtime.StatefulKnowledgeSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Component;

import com.company.dto.PatientVO;
import com.company.po.RuleMap;
import com.company.util.BeanUtils;

@Component("DroolsSpringTest")
public class DroolsSpringTest {
	
	@Inject
	public static PatientVO patient;
	@Inject
	public static RuleMap ruleMap;
	@Autowired
	private ApplicationContext applicationContext;

	/**
	 * 
	 */
	public void setRuleMap(Map<String,Object> map) {
		ruleMap = new RuleMap();
		ruleMap.setRuleMap(map);
		System.out.println("setRuleMap success");
	}
	
	public void setPatient(PatientVO patient) {
		DroolsSpringTest.patient = patient;
	}
	public static void main(String args[]) {
	}
	/**
	 * checkSymptom() 함수가 실행되면 Drools 엔진을 통한 검사 시작 
	 */
	public PatientVO checkSymptom() {
		try {
			/*
			PatientVO patient = (PatientVO) BeanUtils.getBean("patientVO");
			System.out.println("환자이름 : "+patient.getpName()+ "환자 번호 "+patient.getpNumber());
			*/
			applicationContext = new ClassPathXmlApplicationContext(
					"drools-context/applicationContext-drools.xml");
			
			// stateful 
			StatefulKnowledgeSession ksession = (StatefulKnowledgeSession) applicationContext
					.getBean("ksession");
			

			ksession.insert(ruleMap);
			ksession.insert(patient);
			ksession.fireAllRules();
			
		} catch( Throwable e) {
			e.printStackTrace();
		}
		return patient;
	}
}