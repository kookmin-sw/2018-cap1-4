<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
    <link rel="stylesheet" href="css/bootstrap.min2.css">
<title>Patient Survey</title>

<style>
	td {
		text-align : center;
	}
</style>

</head>
<body>
	<table border="1" id= "surveyTable">

        <tr>
            <td rowspan="2" colspan="2">증상</td>
            <td colspan="2">빈도</td>
            <td colspan="3">정도</td>
        </tr>
        <tr>
            <td>가끔</td>
            <td>자주</td>
            <td>경미</td>
            <td>보통</td>
            <td>심함</td>
        </tr>
        <tr id="head_1">
            <td rowspan="3">두통</td>
            <td>터질듯함</td>
            <td><input type=radio name="head_1_fre" value="2"></td>
            <td><input type=radio name="head_1_fre" value="3"></td>
            <td><input type=radio name="head_1_deg" value="1"></td>
            <td><input type=radio name="head_1_deg" value="2"></td>
            <td><input type=radio name="head_1_deg" value="3"></td>
        </tr>
        <tr id="head_2">
            <td>압박감</td>
            <td><input type=radio name="head_2_fre" value="2"></td>
            <td><input type=radio name="head_2_fre" value="3"></td>
            <td><input type=radio name="head_2_deg" value="1"></td>
            <td><input type=radio name="head_2_deg" value="2"></td>
            <td><input type=radio name="head_2_deg" value="3"></td>
        </tr>
        <tr id="head_4">
            <td>지끈거림</td>
            <td><input type=radio name="head_4_fre" value="2"></td>
            <td><input type=radio name="head_4_fre" value="3"></td>
            <td><input type=radio name="head_4_deg" value="1"></td>
            <td><input type=radio name="head_4_deg" value="2"></td>
            <td><input type=radio name="head_4_deg" value="3"></td>
        </tr>
        
        <tr id="whirl_1">
            <td rowspan="3">어지러움</td>
            <td>핑돈다</td>
            <td><input type=radio name="whirl_1_fre" value="2"></td>
            <td><input type=radio name="whirl_1_fre" value="3"></td>
            <td><input type=radio name="whirl_1_deg" value="1"></td>
            <td><input type=radio name="whirl_1_deg" value="2"></td>
            <td><input type=radio name="whirl_1_deg" value="3"></td>
        </tr>
        <tr id="whirl_4">
            <td>저혈압</td>
            <td><input type=radio name="whirl_4_fre" value="2"></td>
            <td><input type=radio name="whirl_4_fre" value="3"></td>
            <td><input type=radio name="whirl_4_deg" value="1"></td>
            <td><input type=radio name="whirl_4_deg" value="2"></td>
            <td><input type=radio name="whirl_4_deg" value="3"></td>
        </tr>
        <tr id="whirl_5">
            <td>빈혈성</td>
            <td><input type=radio name="whirl_5_fre" value="2"></td>
            <td><input type=radio name="whirl_5_fre" value="3"></td>
            <td><input type=radio name="whirl_5_deg" value="1"></td>
            <td><input type=radio name="whirl_5_deg" value="2"></td>
            <td><input type=radio name="whirl_5_deg" value="3"></td>
        </tr>
        
        
        <tr id="mouth_1">
            <td rowspan="3">구취</td>
            <td>항상</td>
            <td><input type=radio name="mouth_1_fre" value="2"></td>
            <td><input type=radio name="mouth_1_fre" value="3"></td>
            <td><input type=radio name="mouth_1_deg" value="1"></td>
            <td><input type=radio name="mouth_1_deg" value="2"></td>
            <td><input type=radio name="mouth_1_deg" value="3"></td>
        </tr>
        <tr id="mouth_2">
            <td>아침기상시</td>
            <td><input type=radio name="mouth_2_fre" value="2"></td>
            <td><input type=radio name="mouth_2_fre" value="3"></td>
            <td><input type=radio name="mouth_2_deg" value="1"></td>
            <td><input type=radio name="mouth_2_deg" value="2"></td>
            <td><input type=radio name="mouth_2_deg" value="3"></td>
        </tr>
        <tr id="mouth_5">
            <td>식후</td>
            <td><input type=radio name="mouth_5_fre" value="2"></td>
            <td><input type=radio name="mouth_5_fre" value="3"></td>
            <td><input type=radio name="mouth_5_deg" value="1"></td>
            <td><input type=radio name="mouth_5_deg" value="2"></td>
            <td><input type=radio name="mouth_5_deg" value="3"></td>
        </tr>
        
        
        <tr id="indigestion_1">
            <td colspan="2">소화불량</td>
            <td><input type=radio name="indigestion_1_fre" value="2"></td>
            <td><input type=radio name="indigestion_1_fre" value="3"></td>
            <td><input type=radio name="indigestion_1_deg" value="1"></td>
            <td><input type=radio name="indigestion_1_deg" value="2"></td>
            <td><input type=radio name="indigestion_1_deg" value="3"></td>
        </tr>
        
        
        <tr id="frustrated_1">
            <td rowspan="2">명치답답</td>
            <td>항상</td>
            <td><input type=radio name="frustrated_1_fre" value="2"></td>
            <td><input type=radio name="frustrated_1_fre" value="3"></td>
            <td><input type=radio name="frustrated_1_deg" value="1"></td>
            <td><input type=radio name="frustrated_1_deg" value="2"></td>
            <td><input type=radio name="frustrated_1_deg" value="3"></td>
        </tr>
        <tr id="frustrated_3">
            <td>공복</td>
            <td><input type=radio name="frustrated_3_fre" value="2"></td>
            <td><input type=radio name="frustrated_3_fre" value="3"></td>
            <td><input type=radio name="frustrated_3_deg" value="1"></td>
            <td><input type=radio name="frustrated_3_deg" value="2"></td>
            <td><input type=radio name="frustrated_3_deg" value="3"></td>
        </tr>
        
        
        <tr id="ache_1">
            <td rowspan="3">명치통증</td>
            <td>뻐근</td>
            <td><input type=radio name="ache_1_fre" value="2"></td>
            <td><input type=radio name="ache_1_fre" value="3"></td>
            <td><input type=radio name="ache_1_deg" value="1"></td>
            <td><input type=radio name="ache_1_deg" value="2"></td>
            <td><input type=radio name="ache_1_deg" value="3"></td>
        </tr>
        <tr id="ache_2">
            <td>콕콕찌름</td>
            <td><input type=radio name="ache_2_fre" value="2"></td>
            <td><input type=radio name="ache_2_fre" value="3"></td>
            <td><input type=radio name="ache_2_deg" value="1"></td>
            <td><input type=radio name="ache_2_deg" value="2"></td>
            <td><input type=radio name="ache_2_deg" value="3"></td>
        </tr>
        <tr id="ache_3">
            <td>쥐어짠다</td>
            <td><input type=radio name="ache_3_fre" value="2"></td>
            <td><input type=radio name="ache_3_fre" value="3"></td>
            <td><input type=radio name="ache_3_deg" value="1"></td>
            <td><input type=radio name="ache_3_deg" value="2"></td>
            <td><input type=radio name="ache_3_deg" value="3"></td>
        </tr>
        
        <tr id="impact_1">
        	<td colspan="2">체함</td>
        	<td><input type=radio name="impact_1_fre" value="2"></td>
            <td><input type=radio name="impact_1_fre" value="3"></td>
            <td><input type=radio name="impact_1_deg" value="1"></td>
            <td><input type=radio name="impact_1_deg" value="2"></td>
            <td><input type=radio name="impact_1_deg" value="3"></td>
        </tr>
        
        <!-- 
        <tr>
            <td rowspan="4">잘 체함</td>
            <td>체함</td>
            <td><input type=radio name="impact_1_fre"></td>
            <td><input type=radio name="impact_1_fre"></td>
            <td><input type=radio name="impact_1_deg"></td>
            <td><input type=radio name="impact_1_deg"></td>
            <td><input type=radio name="impact_1_deg"></td>
        </tr>
        <tr>
            <td>구토 동반</td>
            <td><input type=radio name="impact_2_fre"></td>
            <td><input type=radio name="impact_2_fre"></td>
            <td><input type=radio name="impact_2_deg"></td>
            <td><input type=radio name="impact_2_deg"></td>
            <td><input type=radio name="impact_2_deg"></td>
        </tr>
        <tr>
            <td>두통 동반</td>
            <td><input type=radio name="impact_3_fre"></td>
            <td><input type=radio name="impact_3_fre"></td>
            <td><input type=radio name="impact_3_deg"></td>
            <td><input type=radio name="impact_3_deg"></td>
            <td><input type=radio name="impact_3_deg"></td>
        </tr>
        <tr>
            <td>어지러움 동반</td>
            <td><input type=radio name="impact_4_fre"></td>
            <td><input type=radio name="impact_4_fre"></td>
            <td><input type=radio name="impact_4_deg"></td>
            <td><input type=radio name="impact_4_deg"></td>
            <td><input type=radio name="impact_4_deg"></td>
        </tr>
         -->
        
        <tr id="gas_1">
            <td rowspan="2">가스가 차고 더부룩</td>
            <td>상복부</td>
            <td><input type=radio name="gas_1_fre" value="2"></td>
            <td><input type=radio name="gas_1_fre" value="3"></td>
            <td><input type=radio name="gas_1_deg" value="1"></td>
            <td><input type=radio name="gas_1_deg" value="2"></td>
            <td><input type=radio name="gas_1_deg" value="3"></td>
        </tr>
        <tr id="gas_2">
            <td>하복부</td>
            <td><input type=radio name="gas_2_fre" value="2"></td>
            <td><input type=radio name="gas_2_fre" value="3"></td>
            <td><input type=radio name="gas_2_deg" value="1"></td>
            <td><input type=radio name="gas_2_deg" value="2"></td>
            <td><input type=radio name="gas_2_deg" value="3"></td>
        </tr>
        
        
        <tr id="burb_1">
            <td rowspan="5">트림</td>
            <td>항상</td>
            <td><input type=radio name="burb_1_fre" value="2"></td>
            <td><input type=radio name="burb_1_fre" value="3"></td>
            <td><input type=radio name="burb_1_deg" value="1"></td>
            <td><input type=radio name="burb_1_deg" value="2"></td>
            <td><input type=radio name="burb_1_deg" value="3"></td>
        </tr>
        <tr id="burb_2">
            <td>공복</td>
            <td><input type=radio name="burb_2_fre" value="2"></td>
            <td><input type=radio name="burb_2_fre" value="3"></td>
            <td><input type=radio name="burb_2_deg" value="1"></td>
            <td><input type=radio name="burb_2_deg" value="2"></td>
            <td><input type=radio name="burb_2_deg" value="3"></td>
        </tr>
        <tr id="burb_3">
            <td>식후</td>
            <td><input type=radio name="burb_3_fre" value="2"></td>
            <td><input type=radio name="burb_3_fre" value="3"></td>
            <td><input type=radio name="burb_3_deg" value="1"></td>
            <td><input type=radio name="burb_3_deg" value="2"></td>
            <td><input type=radio name="burb_3_deg" value="3"></td>
        </tr>
        <tr id="burb_4">
            <td>과식 후</td>
            <td><input type=radio name="burb_4_fre" value="2"></td>
            <td><input type=radio name="burb_4_fre" value="3"></td>
            <td><input type=radio name="burb_4_deg" value="1"></td>
            <td><input type=radio name="burb_4_deg" value="2"></td>
            <td><input type=radio name="burb_4_deg" value="3"></td>
        </tr>
        <tr id="burb_5">
            <td>급식 후</td>
            <td><input type=radio name="burb_5_fre" value="2"></td>
            <td><input type=radio name="burb_5_fre" value="3"></td>
            <td><input type=radio name="burb_5_deg" value="1"></td>
            <td><input type=radio name="burb_5_deg" value="2"></td>
            <td><input type=radio name="burb_5_deg" value="3"></td>
        </tr>
        
        
        <tr id="brash_1">
            <td rowspan="6">속쓰림</td>
            <td>항상</td>
            <td><input type=radio name="brash_1_fre" value="2"></td>
            <td><input type=radio name="brash_1_fre" value="3"></td>
            <td><input type=radio name="brash_1_deg" value="1"></td>
            <td><input type=radio name="brash_1_deg" value="2"></td>
            <td><input type=radio name="brash_1_deg" value="3"></td>
        </tr>
        <tr id="brash_2">
            <td>공복</td>
            <td><input type=radio name="brash_2_fre" value="2"></td>
            <td><input type=radio name="brash_2_fre" value="3"></td>
            <td><input type=radio name="brash_2_deg" value="1"></td>
            <td><input type=radio name="brash_2_deg" value="2"></td>
            <td><input type=radio name="brash_2_deg" value="3"></td>
        </tr>
        <tr id="brash_3">
            <td>식후</td>
            <td><input type=radio name="brash_3_fre" value="2"></td>
            <td><input type=radio name="brash_3_fre" value="3"></td>
            <td><input type=radio name="brash_3_deg" value="1"></td>
            <td><input type=radio name="brash_3_deg" value="2"></td>
            <td><input type=radio name="brash_3_deg" value="3"></td>
        </tr>
        <tr id="brash_4">
            <td>수면중/새벽</td>
            <td><input type=radio name="brash_4_fre" value="2"></td>
            <td><input type=radio name="brash_4_fre" value="3"></td>
            <td><input type=radio name="brash_4_deg" value="1"></td>
            <td><input type=radio name="brash_4_deg" value="2"></td>
            <td><input type=radio name="brash_4_deg" value="3"></td>
        </tr>
        <tr id="brash_5">
            <td>아침기상시</td>
            <td><input type=radio name="brash_5_fre" value="2"></td>
            <td><input type=radio name="brash_5_fre" value="3"></td>
            <td><input type=radio name="brash_5_deg" value="1"></td>
            <td><input type=radio name="brash_5_deg" value="2"></td>
            <td><input type=radio name="brash_5_deg" value="3"></td>
        </tr>
        <tr id="brash_6">
            <td>가슴</td>
            <td><input type=radio name="brash_6_fre" value="2"></td>
            <td><input type=radio name="brash_6_fre" value="3"></td>
            <td><input type=radio name="brash_6_deg" value="1"></td>
            <td><input type=radio name="brash_6_deg" value="2"></td>
            <td><input type=radio name="brash_6_deg" value="3"></td>
        </tr>
        
        
        <tr id="backflow_1">
            <td colspan="2">역류</td>
            <td><input type=radio name="backflow_1_fre" value="2"></td>
            <td><input type=radio name="backflow_1_fre" value="3"></td>
            <td><input type=radio name="backflow_1_deg" value="1"></td>
            <td><input type=radio name="backflow_1_deg" value="2"></td>
            <td><input type=radio name="backflow_1_deg" value="3"></td>
        </tr>

        
        
        <tr id="mass_1">
            <td colspan="2">메스꺼움(오심)</td>
            <td><input type=radio name="mass_1_fre" value="2"></td>
            <td><input type=radio name="mass_1_fre" value="3"></td>
            <td><input type=radio name="mass_1_deg" value="1"></td>
            <td><input type=radio name="mass_1_deg" value="2"></td>
            <td><input type=radio name="mass_1_deg" value="3"></td>
        </tr>
        
        
        <tr id="colic_1">
            <td rowspan="6">복통</td>
            <td>상복부</td>
            <td><input type=radio name="colic_1_fre" value="2"></td>
            <td><input type=radio name="colic_1_fre" value="3"></td>
            <td><input type=radio name="colic_1_deg" value="1"></td>
            <td><input type=radio name="colic_1_deg" value="2"></td>
            <td><input type=radio name="colic_1_deg" value="3"></td>
        </tr>
        <tr id="colic_2">
            <td>하복부</td>
            <td><input type=radio name="colic_2_fre" value="2"></td>
            <td><input type=radio name="colic_2_fre" value="3"></td>
            <td><input type=radio name="colic_2_deg" value="1"></td>
            <td><input type=radio name="colic_2_deg" value="2"></td>
            <td><input type=radio name="colic_2_deg" value="3"></td>
        </tr>
        <tr id="colic_3">
            <td>사르르</td>
            <td><input type=radio name="colic_3_fre" value="2"></td>
            <td><input type=radio name="colic_3_fre" value="3"></td>
            <td><input type=radio name="colic_3_deg" value="1"></td>
            <td><input type=radio name="colic_3_deg" value="2"></td>
            <td><input type=radio name="colic_3_deg" value="3"></td>
        </tr>
        <tr id="colic_4">
            <td>옆구리</td>
            <td><input type=radio name="colic_4_fre" value="2"></td>
            <td><input type=radio name="colic_4_fre" value="3"></td>
            <td><input type=radio name="colic_4_deg" value="1"></td>
            <td><input type=radio name="colic_4_deg" value="2"></td>
            <td><input type=radio name="colic_4_deg" value="3"></td>
        </tr>
        <tr id="colic_5">
            <td>뻐근</td>
            <td><input type=radio name="colic_5_fre" value="2"></td>
            <td><input type=radio name="colic_5_fre" value="3"></td>
            <td><input type=radio name="colic_5_deg" value="1"></td>
            <td><input type=radio name="colic_5_deg" value="2"></td>
            <td><input type=radio name="colic_5_deg" value="3"></td>
        </tr>
        <tr id="colic_8">
            <td>쥐어짠다</td>
            <td><input type=radio name="colic_8_fre" value="2"></td>
            <td><input type=radio name="colic_8_fre" value="3"></td>
            <td><input type=radio name="colic_8_deg" value="1"></td>
            <td><input type=radio name="colic_8_deg" value="2"></td>
            <td><input type=radio name="colic_8_deg" value="3"></td>
        </tr>
        
        
        <tr id="tired_1">
            <td colspan="2">피로감</td>
            <td><input type=radio name="tired_1_fre" value="2"></td>
            <td><input type=radio name="tired_1_fre" value="3"></td>
            <td><input type=radio name="tired_1_deg" value="1"></td>
            <td><input type=radio name="tired_1_deg" value="2"></td>
            <td><input type=radio name="tired_1_deg" value="3"></td>
        </tr>
        
        
        <tr id="forget_1">
            <td colspan="2">건망증</td>
            <td><input type=radio name="forget_1_fre" value="2"></td>
            <td><input type=radio name="forget_1_fre" value="3"></td>
            <td><input type=radio name="forget_1_deg" value="1"></td>
            <td><input type=radio name="forget_1_deg" value="2"></td>
            <td><input type=radio name="forget_1_deg" value="3"></td>
        </tr>
        
        
        <tr id="eyepain_1">
            <td colspan="2">안구통증</td>
            <td><input type=radio name="eyepain_1_fre" value="2"></td>
            <td><input type=radio name="eyepain_1_fre" value="3"></td>
            <td><input type=radio name="eyepain_1_deg" value="1"></td>
            <td><input type=radio name="eyepain_1_deg" value="2"></td>
            <td><input type=radio name="eyepain_1_deg" value="3"></td>
        </tr>
        
        
        <tr id="dryeye_1">
            <td colspan="2">안구건조</td>
            <td><input type=radio name="dryeye_1_fre" value="2"></td>
            <td><input type=radio name="dryeye_1_fre" value="3"></td>
            <td><input type=radio name="dryeye_1_deg" value="1"></td>
            <td><input type=radio name="dryeye_1_deg" value="2"></td>
            <td><input type=radio name="dryeye_1_deg" value="3"></td>
        </tr>
        
        
        <tr id ="anxiety_1">
            <td colspan="2">불안감</td>
            <td><input type=radio name="anxiety_1_fre" value="2"></td>
            <td><input type=radio name="anxiety_1_fre" value="3"></td>
            <td><input type=radio name="anxiety_1_deg" value="1"></td>
            <td><input type=radio name="anxiety_1_deg" value="2"></td>
            <td><input type=radio name="anxiety_1_deg" value="3"></td>
        </tr>
        
        
        <tr id = "pounding_1">
            <td colspan="2">가슴이 두근거림</td>
            <td><input type=radio name="pounding_1_fre" value="2"></td>
            <td><input type=radio name="pounding_1_fre" value="3"></td>
            <td><input type=radio name="pounding_1_deg" value="1"></td>
            <td><input type=radio name="pounding_1_deg" value="2"></td>
            <td><input type=radio name="pounding_1_deg" value="3"></td>
        </tr>
        
         <tr id = "back_1">
            <td colspan="2">가슴 답답</td>
            <td><input type=radio name="back_1_fre" value="2"></td>
            <td><input type=radio name="back_1_fre" value="3"></td>
            <td><input type=radio name="back_1_deg" value="1"></td>
            <td><input type=radio name="back_1_deg" value="2"></td>
            <td><input type=radio name="back_1_deg" value="3"></td>
        </tr>
        
        <!-- 
        <tr>
            <td rowspan="6">가슴</td>
            <td>식후에 가슴 답답</td>
            <td><input type=radio name="chest_1_fre"></td>
            <td><input type=radio name="chest_1_fre"></td>
            <td><input type=radio name="chest_1_deg"></td>
            <td><input type=radio name="chest_1_deg"></td>
            <td><input type=radio name="chest_1_deg"></td>
        </tr>
        <tr>
            <td>평소에 답답</td>
            <td><input type=radio name="chest_2_fre"></td>
            <td><input type=radio name="chest_2_fre"></td>
            <td><input type=radio name="chest_2_deg"></td>
            <td><input type=radio name="chest_2_deg"></td>
            <td><input type=radio name="chest_2_deg"></td>
        </tr>
        <tr>
            <td>뻐근</td>
            <td><input type=radio name="chest_3_fre"></td>
            <td><input type=radio name="chest_3_fre"></td>
            <td><input type=radio name="chest_3_deg"></td>
            <td><input type=radio name="chest_3_deg"></td>
            <td><input type=radio name="chest_3_deg"></td>
        </tr>
        <tr>
            <td>콕콕찌름</td>
            <td><input type=radio name="chest_4_fre"></td>
            <td><input type=radio name="chest_4_fre"></td>
            <td><input type=radio name="chest_4_deg"></td>
            <td><input type=radio name="chest_4_deg"></td>
            <td><input type=radio name="chest_4_deg"></td>
        </tr>
        <tr>
            <td>쥐어짠다</td>
            <td><input type=radio name="chest_5_fre"></td>
            <td><input type=radio name="chest_5_fre"></td>
            <td><input type=radio name="chest_5_deg"></td>
            <td><input type=radio name="chest_5_deg"></td>
            <td><input type=radio name="chest_5_deg"></td>
        </tr>
        <tr>
            <td>쪼인다</td>
            <td><input type=radio name="chest_6_fre"></td>
            <td><input type=radio name="chest_6_fre"></td>
            <td><input type=radio name="chest_6_deg"></td>
            <td><input type=radio name="chest_6_deg"></td>
            <td><input type=radio name="chest_6_deg"></td>
        </tr>  -->
        
        
        <tr id="throat_1">
            <td colspan="2">목 이물감</td>
            <td><input type=radio name="throat_1_fre" value="2"></td>
            <td><input type=radio name="throat_1_fre" value="3"></td>
            <td><input type=radio name="throat_1_deg" value="1"></td>
            <td><input type=radio name="throat_1_deg" value="2"></td>
            <td><input type=radio name="throat_1_deg" value="3"></td>
        </tr>
        
        
        <tr id="back_1">
            <td colspan="2">등 뻐근</td>
            <td><input type=radio name="back_1_fre" value="2"></td>
            <td><input type=radio name="back_1_fre" value="3"></td>
            <td><input type=radio name="back_1_deg" value="1"></td>
            <td><input type=radio name="back_1_deg" value="2"></td>
            <td><input type=radio name="back_1_deg" value="3"></td>
        </tr>
        
        
        <tr id="upside_1">
            <td colspan="2">머리로 열이 오름</td>
            <td><input type=radio name="upside_1_fre" value="2"></td>
            <td><input type=radio name="upside_1_fre" value="3"></td>
            <td><input type=radio name="upside_1_deg" value="1"></td>
            <td><input type=radio name="upside_1_deg" value="2"></td>
            <td><input type=radio name="upside_1_deg" value="3"></td>
        </tr>
        
        <!-- 
        <tr>
            <td rowspan="3">숨참/호흡곤란</td>
            <td>식후</td>
            <td><input type=radio name="breathe_1_fre"></td>
            <td><input type=radio name="breathe_1_fre"></td>
            <td><input type=radio name="breathe_1_deg"></td>
            <td><input type=radio name="breathe_1_deg"></td>
            <td><input type=radio name="breathe_1_deg"></td>
        </tr>
        <tr>
            <td>가슴 답답 동반</td>
            <td><input type=radio name="breathe_2_fre"></td>
            <td><input type=radio name="breathe_2_fre"></td>
            <td><input type=radio name="breathe_2_deg"></td>
            <td><input type=radio name="breathe_2_deg"></td>
            <td><input type=radio name="breathe_2_deg"></td>
        </tr>
        <tr>
            <td>숨참</td>
            <td><input type=radio name="breathe_3_fre"></td>
            <td><input type=radio name="breathe_3_fre"></td>
            <td><input type=radio name="breathe_3_deg"></td>
            <td><input type=radio name="breathe_3_deg"></td>
            <td><input type=radio name="breathe_3_deg"></td>
        </tr>-->
        
        
        <tr id="skin_1">
            <td rowspan="2">피부이상</td>
            <td>두드러기</td>
            <td><input type=radio name="skin_1_fre" value="2"></td>
            <td><input type=radio name="skin_1_fre" value="3"></td>
            <td><input type=radio name="skin_1_deg" value="1"></td>
            <td><input type=radio name="skin_1_deg" value="2"></td>
            <td><input type=radio name="skin_1_deg" value="3"></td>
        </tr>
        <tr id="skin_2">
            <td>가려움</td>
            <td><input type=radio name="skin_2_fre" value="2"></td>
            <td><input type=radio name="skin_2_fre" value="3"></td>
            <td><input type=radio name="skin_2_deg" value="1"></td>
            <td><input type=radio name="skin_2_deg" value="2"></td>
            <td><input type=radio name="skin_2_deg" value="3"></td>
        </tr>
        
        
        <tr id="stiff_1">
            <td colspan="2">담결림</td>
            <td><input type=radio name="stiff_1_fre" value="2"></td>
            <td><input type=radio name="stiff_1_fre" value="3"></td>
            <td><input type=radio name="stiff_1_deg" value="1"></td>
            <td><input type=radio name="stiff_1_deg" value="2"></td>
            <td><input type=radio name="stiff_1_deg" value="3"></td>
        </tr>
        
        
        <tr id="neck_1">
            <td colspan="2">뒷목이 뻣뻣하고 결림</td>
            <td><input type=radio name="neck_1_fre" value="2"></td>
            <td><input type=radio name="neck_1_fre" value="3"></td>
            <td><input type=radio name="neck_1_deg" value="1"></td>
            <td><input type=radio name="neck_1_deg" value="2"></td>
            <td><input type=radio name="neck_1_deg" value="3"></td>
        </tr>
        
        
        <tr id="shoulder_1">
            <td colspan="2">어깨결림</td>
            <td><input type=radio name="shoulder_1_fre" value="2"></td>
            <td><input type=radio name="shoulder_1_fre" value="3"></td>
            <td><input type=radio name="shoulder_1_deg" value="1"></td>
            <td><input type=radio name="shoulder_1_deg" value="2"></td>
            <td><input type=radio name="shoulder_1_deg" value="3"></td>
        </tr>
        
        
        <tr id="pooh_1">
            <td rowspan="6">변 상태</td>
            <td>딱딱</td>
            <td><input type=radio name="pooh_1_fre" value="2"></td>
            <td><input type=radio name="pooh_1_fre" value="3"></td>
            <td><input type=radio name="pooh_1_deg" value="1"></td>
            <td><input type=radio name="pooh_1_deg" value="2"></td>
            <td><input type=radio name="pooh_1_deg" value="3"></td>
        </tr>
        <tr id="pooh_2">
            <td>변비</td>
            <td><input type=radio name="pooh_2_fre" value="2"></td>
            <td><input type=radio name="pooh_2_fre" value="3"></td>
            <td><input type=radio name="pooh_2_deg" value="1"></td>
            <td><input type=radio name="pooh_2_deg" value="2"></td>
            <td><input type=radio name="pooh_2_deg" value="3"></td>
        </tr>
        <tr id="pooh_3">
            <td>무른변</td>
            <td><input type=radio name="pooh_3_fre" value="2"></td>
            <td><input type=radio name="pooh_3_fre" value="3"></td>
            <td><input type=radio name="pooh_3_deg" value="1"></td>
            <td><input type=radio name="pooh_3_deg" value="2"></td>
            <td><input type=radio name="pooh_3_deg" value="3"></td>
        </tr>
        <tr id="pooh_4">
            <td>설사</td>
            <td><input type=radio name="pooh_4_fre" value="2"></td>
            <td><input type=radio name="pooh_4_fre" value="3"></td>
            <td><input type=radio name="pooh_4_deg" value="1"></td>
            <td><input type=radio name="pooh_4_deg" value="2"></td>
            <td><input type=radio name="pooh_4_deg" value="3"></td>
        </tr>
        <tr id="pooh_5">
            <td>굳은변</td>
            <td><input type=radio name="pooh_5_fre" value="2"></td>
            <td><input type=radio name="pooh_5_fre" value="3"></td>
            <td><input type=radio name="pooh_5_deg" value="1"></td>
            <td><input type=radio name="pooh_5_deg" value="2"></td>
            <td><input type=radio name="pooh_5_deg" value="3"></td>
        </tr>
        <tr id="pooh_7">
            <td>잔변감</td>
            <td><input type=radio name="pooh_7_fre" value="2"></td>
            <td><input type=radio name="pooh_7_fre" value="3"></td>
            <td><input type=radio name="pooh_7_deg" value="1"></td>
            <td><input type=radio name="pooh_7_deg" value="2"></td>
            <td><input type=radio name="pooh_7_deg" value="3"></td>
        </tr>
        
        
        <tr id="womb_1">
            <td colspan="2">부인질환(냉/대하)</td>
            <td><input type=radio name="womb_1_fre" value="2"></td>
            <td><input type=radio name="womb_1_fre" value="3"></td>
            <td><input type=radio name="womb_1_deg" value="1"></td>
            <td><input type=radio name="womb_1_deg" value="2"></td>
            <td><input type=radio name="womb_1_deg" value="3"></td>
        </tr>
        
        
        <tr id="mouth_1">
            <td rowspan="3">입</td>
            <td>입이 건조(구건)</td>
            <td><input type=radio name="mouth_1_fre" value="2"></td>
            <td><input type=radio name="mouth_1_fre" value="3"></td>
            <td><input type=radio name="mouth_1_deg" value="1"></td>
            <td><input type=radio name="mouth_1_deg" value="2"></td>
            <td><input type=radio name="mouth_1_deg" value="3"></td>
        </tr>
        <tr id ="mouth_2">
            <td>목이 건조(인건)</td>
            <td><input type=radio name="mouth_2_fre" value="2"></td>
            <td><input type=radio name="mouth_2_fre" value="3"></td>
            <td><input type=radio name="mouth_2_deg" value="1"></td>
            <td><input type=radio name="mouth_2_deg" value="2"></td>
            <td><input type=radio name="mouth_2_deg" value="3"></td>
        </tr>
        <tr id ="mouth_3">
            <td>쓴맛이 남(구고)</td>
            <td><input type=radio name="mouth_3_fre" value="2"></td>
            <td><input type=radio name="mouth_3_fre" value="3"></td>
            <td><input type=radio name="mouth_3_deg" value="1"></td>
            <td><input type=radio name="mouth_3_deg" value="2"></td>
            <td><input type=radio name="mouth_3_deg" value="3"></td>
        </tr>
        
        
        <tr>
            <td colspan="2">기타</td>
            <td colspan="6"><input type="text"></td>
        </tr>
    </table><br>
    
    <table border="1">
        <tr>
        	<td colspan="2">복부점수</td>
        </tr>
        <tr>
            <td>상복부</td>
            <td><input type="text"></td>
        </tr>
        <tr>
            <td>하복부</td>
            <td><input type="text"></td>
        </tr>
    </table><br>
    
    <table border="1">
        <tr>
            <th>식사습관</th>
            <th>가끔</th>
            <th>자주</th>
        </tr>
        <tr>
            <td>급식</td>
            <td><input type=radio name="speedy_fre" value="5"></td>
            <td><input type=radio name="speedy_fre" value="6"></td>
        </tr>
        <tr>
            <td>폭식</td>
            <td><input type=radio name="voracity_fre" value="5"></td>
            <td><input type=radio name="voracity_fre" value="6"></td>
        </tr>
        <tr>
            <td>과식</td>
            <td><input type=radio name="surfeit_fre" value="5"></td>
            <td><input type=radio name="surfeit_fre" value="6"></td>
        </tr>
        <tr>
            <td>불규칙적인 식사시간</td>
            <td><input type=radio name="irregular_fre" value="5"></td>
            <td><input type=radio name="irregular_fre" value="6"></td>
        </tr>
        <tr>
            <td>밀가루 음식(면) 好</td>
            <td><input type=radio name="flour_fre" value="5"></td>
            <td><input type=radio name="flour_fre" value="6"></td>
        </tr>
        <tr>
            <td>육류 好</td>
            <td><input type=radio name="meat_fre" value="5"></td>
            <td><input type=radio name="meat_fre" value="6"></td>
        </tr>
        <tr>
            <td>인스턴트 好</td>
            <td><input type=radio name="instant_fre" value="5"></td>
            <td><input type=radio name="instant_fre" value="6"></td>
        </tr>
    </table>
    
    <button type="button" class="btn btn-warning" id="H_SurveySaveButton">저장</button>
    
    <script type="text/javascript" src="js/survey.js?ver=2.312"></script>
</body>
</html>
