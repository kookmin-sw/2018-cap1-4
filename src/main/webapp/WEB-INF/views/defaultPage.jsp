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

<link rel="stylesheet" href="table/blue_style.css" type="text/css">
<link rel="stylesheet" href="table/green_style.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap.min2.css">

<!-- Bootstrap core CSS -->
<title>Oriental Medicine Expert System</title>
<style>
          body{
        display: flex;
        align-items: center;
        justify-content: center;
      }
      .container{
        display: flex;
        flex-direction: column;
        width: 800px;
        border: 1px solid gray;
      }
      header{
        border-bottom:1px  solid gray;
        padding-left: 20px;
      }
      footer{
        border-top:1px solid gray;
        padding: 20px;
        text-align: center;
      }
      .content{
        display: flex;
      }
      .content nav{
        border-right: 1px solid gray;
      }
      .content aside{
        border-left: 1px solid gray;
      }
      nav, aside{
        flex-basis: 150px;
        flex-shrink: 0;
      }
      main{
        padding: 10px;
      }
      nav{
        order: -1;
      }
      /* main{
        order: 1;
      }
      aside{
        order: 2;
      } */
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
			<form class="form-inline">
				<form class="navbar-form pull-left">
					<input class="form-control" type="text" name="pName"
						id="searchPatient" placeholder="환자이름"
						aria-label="환자이름">
					<button type="button" class="btn btn-primary">검색</button>
					<button type="button" class="btn btn-danger">LogOut</button>
				</form>
			</form>
		</div>
		</nav>
		<div class="tab-content">
			<div class="tab-pane active" id="tab1">
				<div class="container-fluid">
					<div class="row-fluid">
						<div class="span1" id ="patientInfoView">
							<h5 style="background-color:#EBEBEB; border: solid 5px #EBEBEB">2017-03-06
								10:52:17 | 안영이(17-01268)500211-20*****(F. 67세 0개월 24일) | [국민공단]
								| 010-5199-**** | 경기도 남양주시 화도읍 명품하우스</h5>
							
						</div>
            <div class="row">
             <div class="span3">
               <div class="col">
                 <div class="span3">
                   <img src="설진.png" height="150" width="120"alt="설진">
                   <textarea rows="4"></textarea>
                   <input type="submit" value="show list">
                   <input type="submit" value="확인"><br />
                 </div>
                 <div class="span3">
                   <img src="복진.png" height="150" alt="복진">
                   <textarea rows="4"></textarea>
                   <input type="submit" value="show list">
                   <input type="submit" value="확인"><br />
                 </div>
                 <div class="span3">
                   <img src="오장육부.png" height="300" width="180"alt="오장육부">
                   <textarea rows="4"></textarea>
                   <input type="submit" value="show list">
                   <input type="submit" value="확인"><br />
                 </div>
               </div>
            </div>

             <div class="span9">
              <div class="col">
                <div class="span12">
                  <div class="row">
                    <div class="span4">
                      <table class="table table-striped">
                          <thead>
                              <tr>
                                  <th>설문결과</th>
                              </tr>
                          </thead>
                          <tbody>
                              <tr>
                                  <td>소화불량</td>
                              </tr>
                              <tr>
                                  <td>명치답답</td>
                              </tr>
                              <tr>
                                  <td>명치부위 압통</td>
                              </tr>
                              <tr>
                                  <td>담적 상복부</td>
                              </tr>
                              <tr>
                                  <td>담적 하복부</td>
                              </tr>
                              <tr>
                                  <td>명치통증</td>
                              </tr>
                              <tr>
                                  <td>불안함</td>
                              </tr>
                              <tr>
                                  <td>추위 탐</td>
                              </tr>
                              <tr>
                                  <td>건망증</td>
                              </tr>
                          </tbody>
                      </table>
                    </div>
                    <div class="span4">
                      <table class="table table-striped">
                           <thead>
                               <tr>
                                   <th>증상</th>
                               </tr>
                           </thead>
                           <tbody>
                               <tr>
                                   <td>소화불량</td>
                               </tr>
                               <tr>
                                   <td>명치답답</td>
                               </tr>
                               <tr>
                                   <td>명치부위 압통</td>
                               </tr>
                               <tr>
                                   <td>담적 상복부</td>
                               </tr>
                               <tr>
                                   <td>담적 하복부</td>
                               </tr>
                               <tr>
                                   <td>명치통증</td>
                               </tr>
                               <tr>
                                   <td>불안함</td>
                               </tr>
                               <tr>
                                   <td>추위 탐</td>
                               </tr>
                               <tr>
                                   <td>건망증</td>
                               </tr>
                           </tbody>
                       </table>
                       <div class="input-append">
                         <input class="input-medium" id="appendedInputButtons" type="text">
                         <button class="btn" type="button">Add</button>
                         <button class="btn" type="button">Del</button><br />
                        <!-- <button type="submit" class="btn btn-primary">변경사항 저장</button> -->
                       </div>
                       <button type="submit" class="btn btn-primary">변경사항 저장</button>
                       <!-- <input type="text" value="">
                       <input type="submit" value="Add"><br />
                       <input type="submit" value="Del"> -->
                       <!-- <input type="submit" value="확인"> -->
                    </div>
                    <div class="span4">
                      <table class="table table-striped">
                           <thead>
                               <tr>
                                   <th>증상 선택 리스트</th>
                               </tr>
                           </thead>
                           <tbody>
                               <tr>
                                   <td>카테고리</td>
                               </tr>
                               <tr>
                                   <td>머리</td>
                               </tr>
                               <tr>
                                   <td>내장기관</td>
                               </tr>
                               <tr>
                                   <td>간</td>
                               </tr>
                               <tr>
                                   <td>심장</td>
                               </tr>
                               <tr>
                                   <td>갱년기</td>
                               </tr>
                               <tr>
                                   <td>기타</td>
                               </tr>
                               <tr>
                                   <td>소화불량</td>
                               </tr>
                               <tr>
                                   <td>명치답답</td>
                               </tr>
                               <!-- <tr>
                                 <td>
                                 <input type="submit" value="Add to left"><br />
                                 <input type="submit" value="확인">
                               </td>
                               </tr> -->
                           </tbody>
                       </table>
                       <input type="submit" class="btn" value="Add to left"><br />
                    </div>
                  </div>
                </div>
                <div class="span12">
                  <div class="col">
                    <div class="span6">
                      <table class="table table-striped">
                           <thead>
                               <tr>
                                   <th>진단</th>
                               </tr>
                           </thead>
                           <tbody>
                               <tr>
                                   <td>Number 17 rule : 옻</td>
                               </tr>
                               <tr>
                                   <td>Number 15 rule : 어지럼</td>
                               </tr>
                               <tr>
                                   <td>Number 12 rule : 총명</td>
                               </tr>
                               <tr>
                                   <td>Number 7 rule : 심혈</td>
                               </tr>
                               <tr>
                                   <td>Number 5 rule : 체기</td>
                               </tr>
                               <tr>
                                   <td>Number 3 rule : 심열</td>
                               </tr>
                           </tbody>
                       </table>
                    </div>
                    <div class="span6">
                      <table class="table table-striped">
                           <thead>
                               <tr>
                                   <th>처방적합성</th>
                               </tr>
                               <tr>
                                   <th>추가사항들</th>
                               </tr>
                           </thead>
                           <tbody>
                               <tr>
                                   <td>Rule 14번의 용량 외에는 적합</td>
                               </tr>
                           </tbody>
                       </table>
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
		</div>
	</div>
	

	<script type="text/javascript">
   
 	
    </script>
	<script type="text/javascript" src="js/diagnosis.js?ver=5"></script>
	<script type="text/javascript" src="js/evalRule.js?ver=2"></script>
	<script type="text/javascript" src="js/search.js?ver=2"></script>
	
	<script src="js/js/dist/util.js"></script>
	<script src="js/js/dist/tab.js"></script>
	
</body>
</html>
