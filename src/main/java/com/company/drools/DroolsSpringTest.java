package com.company.drools;

import org.drools.runtime.StatefulKnowledgeSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Component;

@Component("DroolsSpringTest")
public class DroolsSpringTest {
	
	@Autowired
	private ApplicationContext applicationContext;
	/**
	 * DomainRule 을 map 타입으로 셋팅 
	 */
	
	public static void main(String args[]) {
	}
	/**
	 * 환자를 선택 후 검사하기 버튼을 눌렀을 경우만 checkSymptom() 실행
	 */
	public void checkSymptom() {
		try {
			// 경로 설정
			applicationContext = new ClassPathXmlApplicationContext(
					"drools-context/applicationContext-drools.xml");
			// stateful 방식의 session 을 getbean
			StatefulKnowledgeSession ksession = (StatefulKnowledgeSession) applicationContext
					.getBean("ksession");
			ksession.fireAllRules();
			
		} catch( Throwable e) {
			e.printStackTrace();
		}
	}
}