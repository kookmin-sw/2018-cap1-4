<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
    <link rel="stylesheet" href="css/bootstrap.min2.css">
<title>사상체질 Survey </title>
<h3>설문 선택시 자신에 해당되는 사항을 선택하고, <br>
되도록 설문에 오랜시간을 기울이지 않는 것을 추천드립니다.</h3>
</head>
<body>
 <br><h4>1. 당신의 눈은 다음 중 어느 것에 가깝습니까?</h4>  
   &nbsp; <td><input type=radio name = "aq1" value=1></td> 
    ① 눈빛이 강하다 눈자위가 맑다 눈초리가 올라갔다 눈꺼풀이 얇다, 눈매가 날카롭다.
    <br>&nbsp; <td><input type=radio name = "aq1" value=0></td>
    ② 눈빛이 순하다 눈자위가 흐리다 눈초리가 내려갔다 눈꺼풀이 두껍다, 눈매가 부드럽다. 
 
    <h4>2. 당신의 걸음걸이는 다음 중 어느 것에 가깝습니까?  </h4>
   &nbsp; <td><input type=radio name = "aq2" value=1></td> 
    ① 걸음이 느린 편이다, 얌전하게 걷는다, 고개를 숙이고 걷는다. 
   <br>&nbsp; <td><input type=radio name = "aq2" value=0></td>
    ② 걸음이 빠른 편이다, 꼿꼿하게 걷는다, 고개를 들고 멀리보며 걷는다.
  
    <h4>3. 당신의 목소리는 다음 중 어느 것에 가깝습니까?</h4> 
     &nbsp; <td><input type=radio name = "aq3" value=1></td> 
    ① 크고 우렁차다, 높다, 맑다, 밝다, 카랑카랑하다 
     <br>&nbsp; <td><input type=radio name = "aq3" value=0></td> 
    ② 작고 힘이 없다, 묵직하다, 탁하다, 어둡다, 부드럽다 

<h4> 4. 당신의 얼굴에서 풍기는 인상은 어느 것에 가깝습니까? </h4>   
     &nbsp; <td><input type=radio name = "aq4" value=1></td> 
    ① 밝다 시원시원하다 날카롭다 예리하다 
     <br>&nbsp; <td><input type=radio name = "aq4" value=0></td> 
    ② 점잖다 무게 있다 부드럽다 순하다 
    
    <h4>5. 대화할 때 당신은 어느 쪽에 가깝습니까?</h4>    
     &nbsp; <td><input type=radio name = "aq5" value=0></td> 
    ① 주로 할말이 있어도 마음속에 담아두고 하지 않는 경우가 많다. 
    <br>&nbsp; <td><input type=radio name = "aq5" value=1></td> 
    ② 생각나는 말은 마음속에 담아두지 않고 곧바로 말하는 편이다. 
   
    <h4>6. 당신은 다음 중 어느 쪽에 가깝습니까?</h4>    
     &nbsp; <td><input type=radio name = "aq6" value=0></td> 
    ① 온순하고 꾸밈이 없지만 게으른 경향도 있다. 
     <br>&nbsp; <td><input type=radio name = "aq6" value=1></td> 
    ② 민첩하고 용감하지만 경솔한 경향도 있다. 
     <br>&nbsp; <td><input type=radio name = "aq6" value=0></td> 
    ③ 의젓하고 무게 있지만 무뚝뚝한 경향도 있다. 
     <br>&nbsp; <td><input type=radio name = "aq6" value=1></td> 
    ④ 거침없고 과단성이 있지만 남에게 함부로 하는 경향도 있다. 
 
    <h4>7. 대인관계에서 당신은 다음 중 어느 쪽에 가깝습니까?</h4>       
     &nbsp; <td><input type=radio name = "aq7" value=0></td> 
    ① 성질이 모나지 않고 유순하며 다투기를 싫어한다. 
     <br>&nbsp; <td><input type=radio name = "aq7" value=1></td> 
    ② 매사에 절도가 있고 분명하여 잘못된 일에 대해서는 대충 넘기지 않는다.
     <br>&nbsp; <td><input type=radio name = "aq7" value=0></td> 
    ③ 엄숙하고 무게 있게 행동하며 사람 사귀는데 시간이 걸린다.
     <br>&nbsp; <td><input type=radio name = "aq7" value=1></td> 
    ④ 처음 만난 사람도 쉽게 사귄다. 
 
    <h4>8. 일처리에 있어서 당신은 다음 중 어느 쪽에 가깝습니까? </h4>
    &nbsp; <td><input type=radio name = "aq8" value=1></td> 
     ① 내가 옳다고 생각하면 물러서지 않고 밀어붙인다. 
     <br>&nbsp; <td><input type=radio name = "aq8" value=0></td> 
    ② 하던 일을 마칠 때까지는 다른 일을 쉽게 시작하지 않는다. 
     <br>&nbsp; <td><input type=radio name = "aq8" value=1></td> 
    ③ 이것저것 일을 만들다보니 마무리가 소홀해지는 경우가 많다. 
    <br>&nbsp; <td><input type=radio name = "aq8" value=0></td> 
    ④ 혼자 하는 것이 편하고 남에게 잘 드러내지 않으려 한다. 
    
    <h4>9. 당신의 단점으로 생각되는 것은? </h4>
    &nbsp; <td><input type=radio name = "aq9" value=0></td> 
    ① 변화를 받아들이기가 겁난다.
     <br>&nbsp; <td><input type=radio name = "aq9" value=1></td> 
    ② 겉으로는 화려하나 내실이 없다.
     <br>&nbsp; <td><input type=radio name = "aq9" value=1></td> 
    ③ 너무 자기 멋대로만 하는 편이다. 
    <br>&nbsp; <td><input type=radio name = "aq9" value=0></td> 
    ④ 너무 소극적이고 우유부단하다. 
   
    <h4>10. 남의 일에도 자기 일처럼 잘 나서는 편이다. </h4>   
     &nbsp; <td><input type=radio name = "aq10" value=1></td> 
    ① 예
    &nbsp; <td><input type=radio name = "aq10" value=0></td> 
    ② 아니요
    
    <h4>11. 당신은 어느 쪽에 가깝습니까?</h4>
     &nbsp; <td><input type=radio name = "aq11" value=1></td> 
    ① 사람을 사귐에 있어 붙임성이 좋은 편이다. 
     <br>&nbsp; <td><input type=radio name = "aq11" value=0></td> 
    ② 붙임성이 없어서 사람을 사귀기가 힘들다. 
   
    
    <h4>12. 옳다고 생각하면 손해보는 것도 마다하지 않는다. </h4>   
     &nbsp; <td><input type=radio name = "aq12" value=1></td> 
    ① 예
    &nbsp; <td><input type=radio name = "aq12" value=0></td> 
    ② 아니요
    
    <h4>13. 남에게 자기의 속내를 잘 드러내지 않는다. </h4>
     &nbsp; <td><input type=radio name = "aq13" value=0></td> 
    ① 예
     &nbsp; <td><input type=radio name = "aq13" value=1></td> 
    ② 아니요
   
    <h4>14. 당신은 어느 쪽에 가깝습니까? </h4>
     &nbsp; <td><input type=radio name = "aq14" value=0></td> 
    ① 감정 표현이 다소 느리고 우회적이다. 
     <br>&nbsp; <td><input type=radio name = "aq14" value=1></td> 
    ② 감정 표현이 다소 즉각적이고 직설적이다. 
    
    <h4>15. 당신은 어느 쪽에 가깝습니까?    </h4>
     &nbsp; <td><input type=radio name = "aq15" value=1></td> 
    ① 생각보다 말이나 행동이 먼저 나가는 경우가 많다. 
    <br>&nbsp; <td><input type=radio name = "aq15" value=0></td> 
    ② 생각하는 습관 때문에 말 행동 할 기회를 놓치는 경우가 많다 
    
    <h4>16. 평소의 심리상태에서 다음 중 어느 쪽에 가깝습니까? </h4>
     &nbsp; <td><input type=radio name = "aq16" value=0></td> 
    ① 소심하고 마음이 불안정한 경우가 많다. 
     <br>&nbsp; <td><input type=radio name = "aq16" value=1></td> 
    ② 일을 시작해 놓고 나서 그 일이 잘못될까 두렵다. 
     <br>&nbsp; <td><input type=radio name = "aq16" value=0></td> 
    ③ 일을 시작하기 전에 일이 어찌될까 겁난다. 
    <br>&nbsp; <td><input type=radio name = "aq16" value=1></td> 
    ④ 상 마음이 급해서 가만히 앉아 있을 수 없다. 
   
    <h4>17. 당신은 어느 쪽에 가깝습니까?</h4> 
     &nbsp; <td><input type=radio name = "aq17" value=0></td> 
    ① 남에게 싫은 소리를 잘 못한다.
     <br>&nbsp; <td><input type=radio name = "aq17" value=1></td> 
    ② 바른 소리를 잘 한다.
   
    <h4>18. 다음 중 당신은 어느 것에 가장 가깝습니까?  </h4>  
     &nbsp; <td><input type=radio name = "aq18" value=1></td> 
    ① 가만히 있는 것보다는 움직이는 것을 좋아한다. 
     <br>&nbsp; <td><input type=radio name = "aq18" value=0></td> 
    ② 움직이기를 싫어한다. 
     <br>&nbsp; <td><input type=radio name = "aq18" value=0></td> 
    ③ 밖으로 나돌아 다니기를 좋아하지 않는다. 
  
    <h4>19. 다음 중 당신은 어느 것에 가장 가깝습니까? </h4>  
     &nbsp; <td><input type=radio name = "aq19" value=0></td> 
    ① 평상시 체중변화가 많은 편이다. 
     <br>&nbsp; <td><input type=radio name = "aq19" value=1></td> 
    ② 체중 변화가 별로 없는 편이다. 
    
    <h4>20. 당신의 성격과 가장 가까운 것은?</h4>    
      &nbsp; <td><input type=radio name = "aq20" value=1></td> 
    ① 쾌활한
     <br>&nbsp; <td><input type=radio name = "aq20" value=0></td> 
    ② 평온한
     <br>&nbsp; <td><input type=radio name = "aq20" value=0></td> 
    ③ 몰두하는
     <br>&nbsp; <td><input type=radio name = "aq20" value=1></td> 
    ④ 설득력이있는
   
    <h4>21. 당신의 성격과 가장 가까운 것은?</h4>    
    &nbsp; <td><input type=radio name ="aq21" value=1></td> 
    ① 사교적인

    <br>&nbsp; <td><input type=radio name = "aq21" value=0></td> 

    ② 순응하는
     <br>&nbsp; <td><input type=radio name = "aq21" value=0></td> 
    ③ 끈기있는
     <br>&nbsp; <td><input type=radio name = "aq21" value=1></td> 
    ④ 의지가강한
      
    <h4>22. 당신의 단점과 가장 가까운 것은?</h4>    
     <br>&nbsp; <td><input type=radio name = "aq22" value=1></td> 
    ① 시끄러운
     <br>&nbsp; <td><input type=radio name = "aq22" value=0></td> 
    ② 게으른
     <br>&nbsp; <td><input type=radio name = "aq22" value=0></td> 
    ③ 보수적인
    <br>&nbsp; <td><input type=radio name = "aq22" value=1></td> 
    ④ 주장하는
    <br>

<<<<<<< HEAD
    <button type="button" class = "" id = " ">다음</button>
=======
    <button type="button" class="btn btn-warning" id="G_SurveySaveButton">저장</button>
>>>>>>> c4b6095d2902f411b2279ae4545ac70f6a8964ec
    </body>
</html>