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
          <div class="container-fluid">
    			<div class="col-md-12 mx-auto">
    				<div class="tab-content" role="tablist">
    					<div class="tab-pane active" id="home" role="tabpanel">
    						<div class="row">
    							<div class="col-md-4 mx-auto">
          										<img src="img/수지침반.png" style="width:100%; height:100%"alt="설진">
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
    									 <button type="submit" class="btn btn-primary">변경사항 저장</button>
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
          					<textarea style="width:100%; height:210px" class="noresize"></textarea>
                              <div style="float:right;">
          										<input type="submit" value="show list">
          										<input type="submit" value="확인"><br />
                              </div>
          									
    								</div>
    							</div>
    							<div class="col-md-8 mx-auto">
                    <h5><strong>사상체질 의견</strong></h5>
                    <div style="width:100%; height:200px; overflow:auto">
    								<table class="table table-striped" style='line-height:90%'>
                         <!-- <thead>
                             <tr>
                                 <th>진단</th>
                             </tr>
                         </thead> -->
                         <tbody>
                             <tr>
                                   <th>사상체질</th>
                                   <th>의견</th>
                                 </tr>
                                   <tr>
                                       <td>소음인</td>
                                       <td>신이 실하고 비가 약하다/ 찹쌀, 현미, 감자, 닭고기, 꿀</td>
                                   </tr>
                                   <tr>
                                       <td>소양인</td>
                                       <td>에어로빅처럼 활동적인 운동이 필요하다/ 보리, 오리, 새우, 오이, 바나나</td>
                                   </tr>
                                   <tr>
                                       <td>태음인</td>
                                       <td>허리가 굵고 목덜미가 가늘다/ 밀, 콩, 당근, 배, 자두</td>
                                   </tr>
                                   <tr>
                                       <td>태양인</td>
                                       <td>폐가 실하고 간이 약하다/ 메밀, 모과, 솔잎, 알로에</td>
                                   </tr>
                                   <tr>
                                       <td>소음인</td>
                                       <td>골반이 크고 가슴이 빈약하다/ 인삼, 생강, 대추, 당귀</td>
                                   </tr>
                                   <tr>
                                       <td>태양인</td>
                                       <td>목덜미가 굵고 허리가 가늘다/ 조개류(굴, 홍합, 전복), 모밀</td>
                                   </tr>
                         </tbody>
                     </table>
                   </div>
                   <br></br>
    							</div>
    						</div>
    						<div class="row">
    							<div class="col-md-4 mx-auto">
                    <h5><strong>대기명단</strong></h5>
<div style="width:100%; height:200px; overflow:auto">
 <table class="table table-striped" style='line-height:90%'>
    <!-- <thead>
        <tr>
            <th>설문결과</th>
        </tr>
    </thead> -->
    <tbody>
      <tr>
        <th>번호</th>
        <th>이름</th>
        <th>나이</th>
        <th>성별</th>
      </tr>
        <tr>
            <td>123</td>
            <td>장원용</td>
            <td>28</td>
            <td>남자</td>
        </tr>
        <tr>
            <td>234</td>
            <td>김태우</td>
            <td>25</td>
            <td>남자</td>
        </tr>
        <tr>
            <td>345</td>
            <td>류준영</td>
            <td>25</td>
            <td>남자</td>
        </tr>
        <tr>
            <td>456</td>
            <td>차은채</td>
            <td>23</td>
            <td>여자</td>
        </tr>
        <tr>
          <td>567</td>
          <td>홍길동</td>
          <td>29</td>
          <td>남자</td>
        </tr>
        <tr>
          <td>678</td>
          <td>사람1</td>
          <td>26</td>
          <td>여자</td>
        </tr>
        <tr>
          <td>890</td>
          <td>사람2</td>
          <td>21</td>
          <td>여자</td>
        </tr>
        <tr>
          <td>012</td>
          <td>사람3</td>
          <td>30</td>
          <td>남자</td>
        </tr>
        <tr>
          <td>987</td>
          <td>사람4</td>
          <td>35</td>
          <td>여자</td>
        </tr>
    </tbody>
</table>
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
                  <div style="float:right;">
                    <p>
                    <span class="star-input">
                  	<span class="input">
                      	<input type="radio" name="star-input" value="1" id="p1">
                      	<label for="p1">1</label>
                      	<input type="radio" name="star-input" value="2" id="p2">
                      	<label for="p2">2</label>
                      	<input type="radio" name="star-input" value="3" id="p3">
                      	<label for="p3">3</label>
                      	<input type="radio" name="star-input" value="4" id="p4">
                      	<label for="p4">4</label>
                      	<input type="radio" name="star-input" value="5" id="p5">
                      	<label for="p5">5</label>
                    	</span>
                  </span>
                </p>
              </div>
                    <div style="width:100%; height:200px; overflow:auto">
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
	
	
	<script src="js/js/dist/util.js"></script>
	<script src="js/js/dist/tab.js"></script>
	
</body>
</html>
