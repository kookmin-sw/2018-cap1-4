<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
    <link rel="stylesheet" href="css/bootstrap.min2.css">
<title>사상체질 SurveyC</title>
</head>
<body>
<div style="margin-left: 300px; margin-top: 50px; margin-right: 300px;">
  <br><h1 style="text-align: center">사상체질 설문지C</h1>
  <br>
  <div style="border: 2px solid; background-color: #EBEBEB;">
    <br>
  <h3 style="text-align: center;">설문 선택시 자신에 해당되는 사항을 선택하고, <br>
  되도록 설문에 오랜시간을 기울이지 않는 것을 추천드립니다.</h3>
  <br>
</div>
<br>
<br><h4>1. 일처리에 있어서 당신은 다음 중 어느 쪽에 가깝습니까?  </h4>  
   &nbsp; <td><input type=radio name = "cq1" value=1></td> 
    ① 남들이 뭐라 하던 내가 옳다고 생각하면 물러서지 않고 밀어붙인다. 
    <br>&nbsp; <td><input type=radio name = "cq1" value=0></td>
    ② 이것저것 일을 만들다 보니 마무리가 소홀해지는 경우가 많다. 
<br>
<br>    
    <h4>2. 당신은 어느 쪽에 가깝습니까?    </h4>
   &nbsp; <td><input type=radio name = "cq2" value=0></td> 
    ① 자기주장이 강하지만 남의 시선을 많이 의식한다. 
   <br>&nbsp; <td><input type=radio name = "cq2" value=1></td>
    ② 남을 의식하지 않고 너무 자기 멋대로만 하는 편이다. 
 <br>
<br>   
    <h4>3. 당신의 성격에 대하여 고칠 점이 있다면 다음 중 어느 쪽에 가깝습니까?  </h4> 
     &nbsp; <td><input type=radio name = "cq3" value=1></td> 
    ① 소신이 너무 강하다 보니 남들과 잘 부딪힌다. 
     <br>&nbsp; <td><input type=radio name = "cq3" value=0></td> 
    ② 과시욕으로 인해 실속없는 일을 할 때가 종종 있다. 
<br>
<br>
<h4> 4. 평소의 심리상태에서 다음 중 어느 쪽에 가깝습니까?  </h4>   
     &nbsp; <td><input type=radio name = "cq4" value=1></td> 
    ① 이상적이고 의욕이 앞선다.
     <br>&nbsp; <td><input type=radio name = "cq4" value=0></td> 
    ② 현실적이고 명예욕이 많다.
<br>
<br>    
    <h4>5. 머리가 신체에 비해 크다. </h4>    
     &nbsp; <td><input type=radio name = "cq5" value=1></td> 
    ① 예 
    <br>&nbsp; <td><input type=radio name = "cq5" value=0></td> 
    ② 아니요 
<br>
<br>   
    <h4>6. 아무 이유 없이 음식물이 넘어오는 증상이 있다. </h4>    
     &nbsp; <td><input type=radio name = "cq6" value=1></td> 
    ① 예 
     <br>&nbsp; <td><input type=radio name = "cq6" value=0></td> 
    ② 아니요 
<br>
<br>    
    <h4>7. 아무 이유 없이 다리에 힘이 없어 오래 걷지 못하는 증상이 있다. </h4>       
     &nbsp; <td><input type=radio name = "cq7" value=1></td> 
    ① 예 
     <br>&nbsp; <td><input type=radio name = "cq7" value=0></td> 
    ② 아니요
<br>
<br>     
    <h4>8. 일상생활의 개인적 행복보다는 사회 전체의 행복을 실현하는 것이 나에게는 더욱 중요하다.   </h4>
    &nbsp; <td><input type=radio name = "cq8" value=1></td> 
     ① 예
     <br>&nbsp; <td><input type=radio name = "cq8" value=0></td> 
    ② 아니요
<br>
<br>    
    <h4>9. 일 정도 대변을 못보는 경우가 있으나 크게 불편하지 않다   </h4>
    &nbsp; <td><input type=radio name = "cq9" value=1></td> 
    ① 예
     <br>&nbsp; <td><input type=radio name = "cq9" value=0></td> 
    ② 아니요
 <br>
<br>    
    <h4>10. 당신의 태도는 다음 중 어느 쪽에 가깝습니까?  </h4>   
     &nbsp; <td><input type=radio name = "cq10" value=1></td> 
    ① 예
    &nbsp; <td><input type=radio name = "cq10" value=0></td> 
    ② 아니요
    <br>
<br>
   <div style="float:right;">
   <button type="button" class = "btn btn-warning" id = "backG_SurveyButton">이전</button>
   <button type="button" class = "btn btn-primary" id = "G_SurveyCsaveButton">저장</button>
   </div>
   </div>
   <script type="text/javascript" src="js/survey.js?ver=2.922222"></script>
</body>
</html>