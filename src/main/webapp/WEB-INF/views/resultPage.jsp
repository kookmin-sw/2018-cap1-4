<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>resultPage</title>

<style>

</style>
</head>
<body>

  <div style="margin-left: 120px; margin-top: 70px; margin-right: 120px; border: 2px solid">
      <div class="col-md-12 mx-auto">
        <div class="row" >
          <div class="col-md-12 mx-auto" style="text-align: center; border-bottom: 2px solid">
            <h1>'홍길동 님은 '<c:out value="${resultVO.type}" default="s" />'입니다.</h1>
            
          </div>
        </div>
        
             <div class="row">
               <div class="col-md-6 mx-auto">
                 <img src="img/소양인.PNG" style="width:50%; height:100%;" alt="소양인">
               </div>
               <div class="col-md-6 mx-auto">
                 <img src="img/소양인_수지침.PNG" style="width:50%; height:100%;" alt="소양인_수지침">
               </div>
             </div>
             <div class="row" style="border-top: 2px solid">
              <div class="col-md-12 mx-auto" style="margin-left: 30px; margin-top: 20px; margin-right: 30px;margin-bottom: 20px; text-align: center; font-size:20px">
                '<strong>홍길동</strong>' 님은 '<strong><c:out value="${resultVO.weakRegion}" default="s" /></strong>'가(이) 취약하므로 위 혈자리에서 해당된 자리를 자주 지압 해주시면 좋은 효과를 볼 수 있습니다.
                <br>'<strong>홍길동</strong>' 님과 잘 맞는 음식은 '<strong><c:out value="${resultVO.goodfood}" default="s" /></strong>' 등이 있으며 잘 맞지 않는 음식으로는 <strong><c:out value="${resultVO.badfood}" default="s" /></strong> 등이 있습니다.
                <br>운동법으로는 '<strong>-----------------</strong>'을 추천드리고 '<strong>-----------------</strong>' 게 해주시면 좋을 것입니다.
                <br>종합적으로 '<strong>홍길동</strong>' 님은 '<strong><c:out value="${resultVO.summary}" default="default" /></strong>' 입니다.
                <br>오늘 저녁은 '<strong><c:out value="${resultVO.recommandfood}" default="default" /></strong>' 이 어떠신가요?^^
              </div>
            </div>
        
        </div>

      </div>
  </div>
</body>
</html>
