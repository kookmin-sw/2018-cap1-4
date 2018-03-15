# Oriental Medical Expert System

**팀페이지 주소** -> https://kookmin-sw.github.io/2018-cap1-4/

## 1. 프로젝트 소개

 **본 프로젝트는 한의학을 정보화 기술에 기반한 체계적인 활용을 위하여 환자 혹은 일반 사용자가 자신의 개인 증상이나 상태를 입력하여, 한의학 전문 지식을 함양하고 있는 전문가 시스템이 에 대한 진단과 처방 서비스를 제공하는 시스템 개발을 목표로 한다.**

 이를 위한 세부적인 프로젝트의 내용은 다음과 같다.
 본 프로젝트는 환자의 증상 데이터를 설문지로 사전에 입력을 받고, 이 데이터 통해서
 환자에게 진단 및 처방을 서비스 한다.
	
 Expert System 내부의 Inference Engine이 환자의 증상 데이터를 검사하여 가장 조건에 만족하는
 진단과 처방 결과를 사용자에게 보여준다.

 또한 인턴기간에 분석한 한의학 Rule을 바탕으로 진단 서비스를 제공을 한다. 

 한의학 분야에 대한 지식이 없는 사람들도 이해 할 수 있는 처방결과를 보여주는 것을 목표로 한다. 따라서 한의학 Rule에 대한 진단결과를 새로운 Rule인 사상체질, 수지침 등으로 맵핑하여 결과를 눈으로 보여줄 수 있도록 한다.

 마지막으로 유저를 의사로 한정하지 않고 일반사람들도 웹을 통해서 설문을 작성하여 기본적인
 진단을 받을 수 있도록 한다.
 

## 2. 소개 영상

[![image](doc/이미지/youtubeMain.JPG)](https://www.youtube.com/watch?v=wvII17ksxE4&t=2s)
## 3. Abstract

This project is to develop a system that provides diagnostic and prescription services for the expert system, in which patients or general users enter their own personal symptoms or conditions to systematically utilize oriental medicine based on information technology. It aims.


## 4. 팀 소개

### 장원용 (팀장)
```
# 학번 : 20125164
# Phone : 010-8629-5674
# E-mail : geikil@kookmin.ac.kr
# 역할 : Drools 엔진분석, 서버구축 및 프레임워크 적용
```
### 김태우
```
# 학번 : 20133213
# Phone : 010-5590-4085
# E-mail : cow9404@gmail.com
# 역할 : Rule 분석 및 서버구축, UI 기능 구현
```
### 류준영
```
# 학번 : 20133388
# Phone : 01074368807
# E-mail : ghzldud@naver.com
# 역할 : 데이터베이스 구축 및 Rule Data 생성
```
### 차은채
```
# 학번 : 20153237
# Phone : 01022300934
# E-mail : jjcec@naver.com
# 역할 : 유저 인터페이스 설계 및 구현, UI 디자인
```
## 5. 사용법

### 개발 언어
   - Java
   - Html, CSS, Javascript 
   - Jquery
### 사용 프레임워크
   - Spring MVC
   - Mybatis   	    
   - Ajax
   - Bootstrap
### 라이브러리 관리(Maven을 통해 관리)
   - Drools 5.6.0 Final 
   - Drools-Spring 
   - Mysql-connector-java
   - Jackson
### 서버 프로세스
  - Tomcat Server 8.5, Nginx 1.12.2
### 데이터베이스
  - Mysql


## Markdown을 사용하여 내용꾸미기

Markdown은 작문을 스타일링하기위한 가볍고 사용하기 쉬운 구문입니다. 여기에는 다음을위한 규칙이 포함됩니다.

```markdown
Syntax highlighted code block

# Header 1
## Header 2
### Header 3

- Bulleted
- List

1. Numbered
2. List

**Bold** and _Italic_ and `Code` text

[Link](url) and ![Image](src)
```

자세한 내용은 [GitHub Flavored Markdown](https://guides.github.com/features/mastering-markdown/).

### Support or Contact

readme 파일 생성에 추가적인 도움이 필요하면 [도움말](https://help.github.com/articles/about-readmes/) 이나 [contact support](https://github.com/contact) 을 이용하세요.
