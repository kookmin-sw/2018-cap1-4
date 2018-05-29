<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="css/bootstrap2.css">

    <title>hospital결과지</title>
    <style>
      h4 {
        margin: 40px 0 10px;
      }
      h5{
        width:102%;
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
            <div class="row-fluid">
              <div class="span1" style="margin-top: 20px; ">
                <span style="width:100%; text-align: center; "><h2>'<c:out value="${patient.pName}" default="홍 길동 " />'님의 결과페이지</h2></span>
                <hr>
              </div>
              <div class="span11">
              <div class="col-md-12 mx-auto">
            <div class="row">
              <!-- 전체 왼쪽 -->
              <div class="col-md-6 mx-auto">
                 <div class="row">
                    <div class="col-md-12 mx-auto">
                      <h5><strong>환자정보</strong></h5>
                      <div style="width:102%; height:482px; overflow:auto;background-color:white">
                       <table class="table table-striped" style='line-height:90%'>
                          <tbody>
                         	 <tr>
                                  <td>환자번호 : <c:out value="${patient.pNumber}" default="홍 길동 " /></td>
                              </tr>
                              <tr>
                                  <td>이름: <c:out value="${patient.pName}" default="홍 길동 " /></td>
                              </tr>
                              <tr>
                                  <td>성별: <c:out value="${patient.sex}" default="홍 길동 " /></td>
                              </tr>
                              <tr>
                                  <td>나이: <c:out value="${patient.age}" default="홍 길동 " /></td>
                              </tr>
                              <tr>
                                <td> 방문날짜 : <c:out value="${patient.visitDate}" default="홍 길동 " /></td>
                              </tr>
                              <tr>
                                <td> 주소 : </td>
                              </tr>
                              <tr>
                                <td> 기타 : </td>
                              </tr>
                              <tr>
                                <td> 특이사항 : </td>
                              </tr>
                          </tbody>
                      </table>
                    </div>
                    </div>
                </div>
                 <div class="row">
                   <div class="col-md-6 mx-auto">

                     <h5><strong>증상</strong></h5>
                     <div style="width:102%; height:416px; background-color:white">
                      <table class="table table-striped" style='line-height:90%'>
                         <tbody>
                         	<c:forEach items="${patient.diagnosisArr}" var="arr">
					    		<tr>
					    			<td>${arr}</td>
					    		</tr>
					    	</c:forEach>
                         </tbody>
                     </table>
                   </div>

                   </div>

                   <div class="col-md-6 mx-auto">
                     <h5><strong>처방</strong></h5>
                     <div style="width:102%; height:416px; overflow:auto;background-color:white">
                      <table class="table table-striped" style='line-height:90%'>
                         <tbody>
                         	<c:forEach items="${patient.simplePrescr}" var="arr">
					    		<tr>
					    			<td>${arr}</td>
					    		</tr>
					    	</c:forEach>
                         </tbody>
                     </table>
                   </div>
                   </div>
                 </div>

               </div>

               <!-- 전체 오른쪽 -->
               <div class="col-md-6 mx-auto">
                 <div class="row">
                   <div class="col-md-4 mx-auto">
                     <h5 style="border: 10px solid #F2C46A; background-color:#F2C46A;"><strong>수지침1</strong></h5>
                    <img src="<c:out value='${patient.handspot1}' default='img/default1.jpg' />" style="width:102%; height:418px; "alt="오장육부">
                   </div>
                   <div class="col-md-4 mx-auto">
                     <h5 style="border: 10px solid #F2C46A; background-color:#F2C46A;"><strong>수지침2</strong></h5>
                    <img src="<c:out value='${patient.handspot2}' default='img/default2.jpg' />" style="width:102%; height:418px; "alt="오장육부">
                   </div>
                   <div class="col-md-4 mx-auto">
                     <h5 style="border: 10px solid #F2C46A; background-color:#F2C46A;"><strong>수지침3</strong></h5>
                    <img src="<c:out value='${patient.handspot3}' default='img/default3.jpg' />" style="width:102%; height:418px; "alt="오장육부">
                   </div>
                 </div>
<br>
<br>
<br>
                 <div class="row">
                   <div class="col-md-4 mx-auto">
                     <h5 style="border: 10px solid #F2C46A; background-color:#F2C46A;"><strong>수지침4</strong></h5>
                    <img src="<c:out value='${patient.handspot4}' default='img/default4.jpg' />" style="width:102%; height:418px; "alt="오장육부">
                   </div>

                   <div class="col-md-4 mx-auto">
                     <h5 style="border: 10px solid #F2C46A; background-color:#F2C46A;"><strong>수지침5</strong></h5>
                    <img src="<c:out value='${patient.handspot5}' default='img/default5.jpg' />" style="width:102%; height:418px; "alt="오장육부">
                   </div>
                   <div class="col-md-4 mx-auto">
                     <h5 style="border: 10px solid #F2C46A; background-color:#F2C46A;"><strong>수지침6</strong></h5>
                    <img src="<c:out value='${patient.handspot6}' default='img/default6.jpg' />" style="width:102%; height:418px; "alt="오장육부">
                   </div>
                 </div>
               </div>
             </div>
           </div>
            </div>
          </div>
  </body>
</html>
