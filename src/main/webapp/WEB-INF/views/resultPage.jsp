<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>resultPage</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/bootstrap2.css">
    <style>
      h4 {
        margin: 40px 0 10px;
      }
      h5{
        width:100%;
        border: 10px solid #ACE26D;
        background: #ACE26D
      }
      body{
        color: black;
        background-color: #FAFAFA;
      }
    </style>
  </head>
    <body>
    <div style="margin-left: 120px; margin-top: 70px; margin-right: 120px; border: 2px solid;">
            <div class="row-fluid">
              <div class="span1" style="margin-top: 20px; ">
                <span style="width:100%; text-align: center; "><h2>'<strong><c:out value='${resultVO.name}' default='홍 길동 ' /></strong>'님은 '<strong><c:out value="${resultVO.type}" default="홍 길동 " /></strong>' 입니다</h2></span>
                <hr>
              </div>
              <div class="span11">
              <div class="col-md-12 mx-auto">
            <div class="row">
              <!-- 전체 왼쪽 -->
              <div class="col-md-12 mx-auto" >

                 <div class="row" >
                   <div class="col-md-6 mx-auto">

                     <h5><strong>체형특징</strong></h5>
                     <div style="width:100%; height:416px; background-color:white">
                     <img src="<c:out value='${resultVO.typePicture}' default='홍 길동 ' />" style="width:100%; height:120%;" alt="소양인">
                   </div>

                   </div>
                   <div class="col-md-6 mx-auto">
                     <h5><strong>수지침</strong></h5>
                     <div style="width:100%; height:416px; background-color:white">
                      <img src="<c:out value='${resultVO.handPicture}' default='홍 길동 ' />" style="width:100%; height:120%;" alt="소양인_수지침">
                   </div>
                   </div>
                 </div>
                 <br>
                 <br>
                 <br>
                 <br>
                 <br>
                 <br>
                 <br>
                 <div class="row">
                    <div class="col-md-12 mx-auto">
                      <h5><strong>최종 결과</strong></h5>
                      <div style="width:100%; height:482px; overflow:auto;background-color:white">
                        <div class="col-md-12 mx-auto" style="margin-left: 30px; margin-top: 20px; margin-right: 30px;margin-bottom: 20px;  font-size:20px">
                          '<strong><c:out value='${resultVO.name}' default='홍 길동 ' /></strong>' 님은 '<strong><c:out value="${resultVO.weakRegion}" default="홍 길동 " /></strong>'가(이) 취약하므로 위 혈자리에서 해당된 자리를 자주 지압 해주시면 좋은 효과를 볼 수 있습니다.
                          <br>'<strong><c:out value='${resultVO.name}' default='홍 길동 ' /></strong>' 님과 잘 맞는 음식은 '<strong><c:out value="${resultVO.goodfood}" default="홍 길동 " /></strong>' 등이 있으며 잘 맞지 않는 음식으로는 <strong>'<c:out value="${resultVO.badfood}" default="홍 길동 " />'</strong> 등이 있습니다.
                          <br>종합적으로 '<strong><c:out value="${resultVO.summary}" default="홍 길동 " /></strong>'
                          <br>오늘 저녁은 '<strong><c:out value="${resultVO.oneOfFoods}" default="홍 길동 " /></strong>' 이 어떠신가요?^^
                        </div>
                    </div>
                    </div>
                </div>

                 </div>
               </div>
             </div>
           </div>
            </div>
          </div>
  </body>
</html>
