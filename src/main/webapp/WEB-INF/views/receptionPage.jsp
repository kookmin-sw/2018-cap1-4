<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="css/bootstrap.min2.css">

<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.10.1/themes/base/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
<title>Insert title here</title>
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
						id="searchPatient" placeholder="환자이름" aria-label="환자이름" />
					<button type="submit" class="btn btn-primary">검색</button>
					<button type="submit" class="btn btn-danger">LogOut</button>
				</form>
			</form>
		</div>
		</nav>
		<div class="col-md-12 mx-auto">
            <div class="row">
              <!-- 전체 왼쪽 -->
              <div class="col-md-6 mx-auto">
                <h5><strong>환자정보</strong></h5>
                    <div style="width:105%; height:416px; overflow:auto;background-color:white">
                    <table class="table table-striped" style='line-height:90%'>
                    <tbody>
                        <tr>
                            <td>이름</td>
                            <td><input class="form-control" type="text"></td>
                        </tr>
                        <tr>
                            <td>주소</td>
                            <td><input class="form-control" type="text"></td>
                        </tr>
                        <tr>
                            <td>신장</td>
                            <td><input class="form-control" type="text"></td>
                        </tr>
                        <tr>
                            <td>몸무게</td>
                            <td><input class="form-control" type="text"></td>
                        </tr>
                        <tr>
                            <td>과거 질병</td>
                            <td><input class="form-control" type="text"></td>
                        </tr>
                        <tr>
                            <td>현재 질병</td>
                            <td><input class="form-control" type="text"></td>
                        </tr>
                        <tr>
                            <td>빈칸1</td>
                            <td><input class="form-control" type="text"></td>
                        </tr>
                        <tr>
                            <td>빈칸2</td>
                            <td><input class="form-control" type="text"></td>
                        </tr>
                        <tr>
                            <td>빈칸3</td>
                            <td><input class="form-control" type="text"></td>
                        </tr>
                        <tr>
                            <td>빈칸4</td>
                            <td><input class="form-control" type="text"></td>
                        </tr>
                        <tr>
                            <td>빈칸5</td>
                            <td><input class="form-control" type="text"></td>
                        </tr>
                        <tr>
                            <td>빈칸6</td>
                            <td><input class="form-control" type="text"></td>
                        </tr>
                        <tr>
                            <td>빈칸7</td>
                            <td><input class="form-control" type="text"></td>
                        </tr>
                        <tr>
                            <td>빈칸8</td>
                            <td><input class="form-control" type="text"></td>
                        </tr>
                    </tbody>
                    </table>
                    </div>
                    <div style="float:right;">
                    <form class="form-inline">
                      <button type="button" >추가</button>
                      <button type="button" >저장</button>
                      <button type="submit" >새로고침</button>
                    </form>
                  </div>
               </div>

               <!-- 전체 오른쪽 -->
               <div class="col-md-6 mx-auto">
                 <script>
                    function nwindow(){
                        var url="test.html";
                        window.open(url,"","width=400,height=400,left=600");
                    }
                </script>

                 <h5><strong>환자 대기자 명단</strong></h5>
                    <div style="width:105%; height:418px; overflow:auto; background-color:white">
                      <table class="table table-striped" style='line-height:90%'>
                        <tbody>
                            <tr>
                                <td>장원용</td>
                                <td><div style="float:right;"><input type="button" value="팝업창"  onclick="nwindow()"/></div></td>
                            </tr>
                            <tr>
                                <td>김태우</td>
                                <td><div style="float:right;"><input type="button"  value="팝업창"  onclick="nwindow()"/></div></td>
                            </tr>
                            <tr>
                                <td>류준영</td>
                                <td><div style="float:right;"><input type="button"  value="팝업창"  onclick="nwindow()"/></div></td>
                            </tr>
                            <tr>
                                <td>차은채</td>
                                <td><div style="float:right;"><input type="button"  value="팝업창"  onclick="nwindow()"/></div></td>
                            </tr>
                            <tr>
                                <td>환자1</td>
                                <td><div style="float:right;"><input type="button"  value="팝업창"  onclick="nwindow()"/></div></td>
                            </tr>
                            <tr>
                                <td>환자2</td>
                                <td><div style="float:right;"><input type="button"  value="팝업창"  onclick="nwindow()"/></div></td>
                            </tr>
                            <tr>
                                <td>환자3</td>
                                <td><div style="float:right;"><input type="button" value="팝업창"  onclick="nwindow()"/></div></td>
                            </tr>
                            <tr>
                                <td>환자4</td>
                                <td><div style="float:right;"><input type="button"  value="팝업창"  onclick="nwindow()"/></div></td>
                            </tr>
                            <tr>
                                <td>환자5</td>
                                <td><div style="float:right;"><input type="button"  value="팝업창"  onclick="nwindow()"/></div></td>
                            </tr>
                        </tbody>
                    </table>
                    </div>
               </div>
             </div>
           </div>
		
	</div>
	
	<script type="text/javascript" src="js/diagnosis.js?ver=5"></script>
	<script type="text/javascript" src="js/evalRule.js?ver=2"></script>
	<script type="text/javascript" src="js/search.js?ver=2"></script>
</body>
</html>