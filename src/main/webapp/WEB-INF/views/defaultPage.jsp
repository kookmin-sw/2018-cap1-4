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
      .label
      {
        width: 290px;
        height: 40px;
        margin: 9px 0 0 0;
        padding: 2px;
        background-color: #EBEBEB;
        text-align: left;
        border: 1px solid #EBEBEB;
      }
      .elements
      {
        border: 1px solid #ccccff;
        padding: 7px;
        border: 1px solid #ffffff;
        width: 280px;
      }
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
  <div class="row-fluid">
              
              <div class="span11">
                <div class="col-md-12 mx-auto">
          				<div class="tab-content" role="tablist">
          					<div class="tab-pane active" id="home" role="tabpanel">
          						<div class="row">
          							<div class="col-md-4 mx-auto">
          								<div class="row">
          									<div class="col-md-6 mx-auto">
          										<img src="img/설진.png" style="width:80%; height:80%"alt="설진">
          									</div>
          									<div class="col-md-6 mx-auto">
                              <textarea style="width:100%; height:120%" class="noresize"></textarea>
                              <div style="float:right;">
                              <input type="submit" value="show list">
          										<input type="submit" value="확인"><br />
                              </div>
          									</div>
          								</div>
          							</div>
                        <div class="col-md-8 mx-auto">
          								<div class="row">
          								<div class="col-md-4 mx-auto">
                            <h5><strong>설문결과</strong></h5>
                            <div style="width:100%; height:200px; overflow:auto">
          									 <table class="table table-striped" style='line-height:90%'>
          											<!-- <thead>
          													<tr>
          															<th>설문결과</th>
          													</tr>
          											</thead> -->
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
          								</div>
          								<div class="col-md-4 mx-auto">
                            <h5><strong>증상</strong></h5>
                            <div style="width:100%; height:200px; overflow:auto">
          										 <table class="table table-striped" style='line-height:90%'>
          											 <!-- <thead>
          													 <tr>
          															 <th>증상</th>
          													 </tr>
          											 </thead> -->
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
                           <div style="float:right;">
          									 <div class="input-append">
          										 <input class="input-medium" id="appendedInputButtons" type="text">
          										 <button type="button">Add</button>
          										 <button type="button">Del</button><br />
          										<!-- <button type="submit" class="btn btn-primary">변경사항 저장</button> -->
          									 </div>
                             <div style="float:right;">
          									 <button type="submit" class="btn btn-primary">진단하기</button>
                           </div>
                           </div>
          								</div>
          								<div class="col-md-4 mx-auto">
                            <h5><strong>증상 선택 리스트</strong></h5>
                            <div style="width:100%; height:200px; overflow:auto">
          											<table class="table table-striped" style='line-height:90%'>
                                  <form>
                                     <div>
                                       <div id="section1" class="label" style="width:100%">
                                         <p>카테고리</p>
                                       </div>
                                       <div id="section1b" class="elements">
                                       <div>
                                         <div id="section1" class="label">
                                           <p>머리</p>
                                         </div>
                                         <div id="section1b" class="elements">
                                           <input type="checkbox" name="box1" /> - 왼쪽<br />
                                           <input type="checkbox" name="box1" /> - 오른쪽<br />
                                           <input type="checkbox" name="box1" /> - 앞<br />
                                           <input type="checkbox" name="box1" /> - 뒤<br />
                                           <input type="checkbox" name="box1" /> - 전체<br />
                                          </div>
                                        </div>
                                        <div>
                                          <div id="section1" class="label">
                                            <p>내장기관</p>
                                          </div>
                                          <div id="section1b" class="elements">
                                            <input type="checkbox" name="box1" /> - 간<br />
                                            <input type="checkbox" name="box1" /> - 심장<br />
                                            <input type="checkbox" name="box1" /> - 갱년기<br />
                                            <input type="checkbox" name="box1" /> - 위<br />
                                            <input type="checkbox" name="box1" /> - 장<br />
                                           </div>
                                         </div>
                                         <div>
                                           <div id="section1" class="label">
                                             <p>기타</p>
                                           </div>
                                           <div id="section1b" class="elements">
                                             <input type="checkbox" name="box1" /> - 소화불량<br />
                                             <input type="checkbox" name="box1" /> - 명치답답<br />
                                             <input type="checkbox" name="box1" /> - 기타1<br />
                                             <input type="checkbox" name="box1" /> - 기타2<br />
                                             <input type="checkbox" name="box1" /> - 기타3<br />
                                            </div>
                                          </div>
                                        </div>
                                       <!-- <div id="section1b" class="elements">
                                         <input type="checkbox" name="box1" /> - box one<br />
                                         <input type="checkbox" name="box1" /> - box one<br />
                                         <input type="checkbox" name="box1" /> - box one<br />
                                         <input type="checkbox" name="box1" /> - box one<br />
                                         <input type="checkbox" name="box1" /> - box one<br />
                                        </div> -->
                                      </div>

                                     <!-- <div>

                                     <div id="section2" class="label">
                                       <p>Buttons</p>
                                     </div>
                                     <div class="elements">
                                       <input type="radio" name="button1" /> - button one<br />
                                       <input type="radio" name="button1" /> - button one<br />
                                       <input type="radio" name="button1" /> - button one<br />
                                       <input type="radio" name="button1" /> - button one<br />
                                       <input type="radio" name="button1" /> - button one<br />
                                       <button>Submit</button>
                                     </div>
                                   </div> -->
                                   </form>
          									    </table>
                           </div>
                           <div style="float:right;">
                           <input type="submit" value="Add to left"><br />
                         </div>
          								</div>
          							</div>
          							</div>
          						</div>
          					</div>
          						<div class="row">
          							<div class="col-md-4 mx-auto">
          								<div class="row">
          									<div class="col-md-6 mx-auto">
          										<img src="img/복진.png" style="width:85%; height:85%" alt="복진">
          									</div>
          									<div class="col-md-6 mx-auto">
          										<textarea style="width:100%; height:87%" class="noresize"></textarea>
                              <div style="float:right;">
          										<input type="submit" value="show list">
          										<input type="submit" value="확인"><br />
                              </div>
          									</div>
          								</div>
          							</div>
          							<div class="col-md-8 mx-auto">
                          <h5><strong>진단결과</strong></h5>
                          <div style="width:100%; height:200px; overflow:auto">
          								<table class="table table-striped" style='line-height:90%'>
                               <!-- <thead>
                                   <tr>
                                       <th>진단</th>
                                   </tr>
                               </thead> -->
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
                         <br></br>
          							</div>
          						</div>
          						<div class="row">
          							<div class="col-md-4 mx-auto">
          								<div class="row">
          									<div class="col-md-6 mx-auto">
          										<img src="img/오장육부.png" style="width:95%; height:135%"alt="오장육부">
          									</div>
          									<div class="col-md-6 mx-auto">
          										<textarea style="width:100%; height:120%" class="noresize"></textarea>
                              <div style="float:right;">
          										<input type="submit" value="show list">
          										<input type="submit" value="확인"><br />
                            </div>
          									</div>
          								</div>
          							</div>
          							<div class="col-md-8 mx-auto">
                          <div style="float:left;">
                          <h5>
                            <strong>
                              처방적합성<br />
                            </strong>
                              <i class="icon-chevron-down"></i>추가사항들
                          </h5>
                        </div>
                        
                          <div style="width:100%; height:200px; overflow:auto">
          									<!-- <table class="table table-striped" style='line-height:90%'>
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
                                   <tr>
                                       <td>Rule 16번의 용량 부적합</td>
                                   </tr>
                                   <tr>
                                       <td>Rule 18번 점검바람</td>
                                   </tr>
                                   <tr>
                                       <td>Rule 3번의 용량 외에는 적합</td>
                                   </tr>
                              </tbody>
          									</table> -->
                            <textarea style="width:100%; height:82%" class="noresize"></textarea><br />
                            <div style="float:right;">
                            <input type="submit" value="저장">
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
