<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.10.1/themes/base/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>

<link rel="stylesheet" href="css/bootstrap.min2.css">
<title>Insert title here</title>
	<style>
	#receptionTalbe tr:first-child{
		background-color: #FAFAFA;
		color: #333333;
   		background: #596778;
	}

	</style>
</head>
<body>
	<div class="ui_container">
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="collapse navbar-collapse" id="navbarsExample09">
			<ul class="navbar-nav nav nav-tabs mr-auto" role="tablist">
				<li class="active"><a href="receptionPage"
					class="nav-link active" role="tab" style="color: black;">접수</a></li>
				<li><a href="defaultPage" class="nav-link" role="tab"
					style="color: black;">진단</a></li>
				<li class="active"><a href="evalTablePage"
					class="nav-link active" role="tab" style="color: black;">평가</a></li>
			</ul>
			<form class="form-inline" id="evalRuleForm">
				<form class="navbar-form pull-left">
					<input class="form-control" type="text" name="pName"
						id="searchPatientReception" placeholder="환자이름" aria-label="환자이름" />
					<button type="button" class="btn btn-primary"
						id="searchButtonrReception">검색</button>
					<button type="button" class="btn btn-danger" id="clickedLogout">LogOut</button>
				</form>
			</form>
		</div>
		</nav>
		<div class="col-md-12 mx-auto">
            <div class="row">
              <!-- 전체 왼쪽 -->
              <div class="col-md-6 mx-auto">
              <br>
                <h5><strong>환자정보</strong></h5>
                    <div style="width:100%; height:416px; overflow:auto;background-color:white">
                    <table class="table table-striped" style='line-height:90%' id="showWaitingPatient">
                    <tbody>
                        <tr>
                            <td>환자번호</td>
                            <td><input class="form-control" type="text" id="pNumber"></td>
                        </tr>
                        <tr>
                            <td>이름</td>
                            <td><input class="form-control" type="text" id="pName"></td>
                        </tr>
                        <tr>
                            <td>나이</td>
                            <td><input class="form-control" type="text" id="age"></td>
                        </tr>
                        <tr>
                            <td>성별 </td>
                            <td><input class="form-control" type="text" id="sex"></td>
                        </tr>
                        <tr>
                            <td>몸무게  </td>
                            <td><input class="form-control" type="text" ></td>
                        </tr>
                        <tr>
                            <td>주소  </td>
                            <td><input class="form-control" type="text" ></td>
                        </tr>
                       <tr>
                            <td>기타 </td>
                            <td><input class="form-control" type="text" ></td>
                        </tr>
                    </tbody>
                    </table>
                    </div>
                    <div style="float:right;">
                    <form class="form-inline">
                      <button type="button" id="addPatientButton">추가</button>
                      <button type="button" id="savePatientButton">저장</button>
                      <button type="submit" id="refreshButton">새로고침</button>
                    </form>
                  </div>
               </div>

				<!-- 전체 오른쪽 -->
				<div class="col-md-6 mx-auto">
				<br>
                 <h5><strong>환자 대기자 명단</strong></h5>
              
                    <div style="width:100%; height:418px; overflow:auto; background-color:white">
                      <table class="table table-striped table-hover" style='line-height:90%'>
                        <tbody>
                        <c:forEach items="${waitList}" var="member">
    						<tr>
				    			<td>${member.pNumber} / ${member.pName}</td>
				    			<td><div style="float:right;"><input type="button" value="팝업창"  onclick="nwindow(this)" /></div></td>
    						</tr>
    					</c:forEach>
                        </tbody>
                    </table>
                    </div>
               </div>
             </div>
           </div>
	</div>
	<script type="text/javascript">
	function nwindow(obj)
	{
		var tr = $(obj).parent().parent().parent();
		var td = tr.children();
		var tempArr = td.eq(0).text().split('/'); //  '/' 기준으로 자르기 pNum 가져오기
		alert(tempArr[1]+ " " + tempArr[0]);
		var pNum = tempArr[0].slice(0,-1); // 공백 제거
		var url="hospitalSurvey?user="+pNum; // URL 로 환자 번호 넘기기 (환자 증상 넣을때 환자 번호와 같이 넣기 위해)
		windowObj = window.open(url,"","width=600,height=700,left=600");
	}
	</script>
	<script type="text/javascript" src="js/diagnosis.js?ver=5"></script>
	<script type="text/javascript" src="js/evalRule.js?ver=2"></script>
	<script type="text/javascript" src="js/search.js?ver=3.2129111127629"></script>
	<script type="text/javascript" src="js/reception.js?ver=1.21212529222111"></script>
	<script type="text/javascript" src="js/survey.js?ver=1.12"></script>
</body>
</html>