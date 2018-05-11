
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!--<meta charset="utf-8">  -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet" href="css/bootstrap.min2.css">

<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.10.1/themes/base/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>

<script type="text/javascript" src="table/jquery.tablesorter.min.js"></script>
<link rel="stylesheet" href="table/blue_style.css" type="text/css">
<link rel="stylesheet" href="table/green_style.css" type="text/css">

     <style>
      #tablesorter-demo{
        text-align: left;
        font-size:25px;
        margin-left: auto;
        margin-right: auto;
      }
      #search{
        text-align: center;
      }
     </style>


<!-- Bootstrap core CSS -->
<title>Oriental Medicine Expert System</title>

</head>

    <script type="text/javascript">
    <!--
    	$(document).ready(function(){
    		$("#tablesorter-demo").tablesorter();
    	});
    //-->
    </script>
    
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
					<button type="button" class="btn btn-primary">검색</button>
					<button type="button" class="btn btn-danger" id ="clickedLogout">LogOut</button>
				</form>
			</form>
		</div>
		</nav>
	</div>
	

	<table id="tablesorter-demo" class="tablesorter" border="0" cellpadding="0" cellspacing="1">
    <thead>
      <tr>
        <th style="font-size:2rem">No.</th>
        <th style="font-size:2rem">Date</th>
        <th style="font-size:2rem">Score</th>
        <th style="font-size:2rem">Comment</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>1</td>
        <td>2017.10.22</td>
        <td>2</td>
        <td>문제점1</td>
      </tr>
      <tr>
        <td>2</td>
        <td>2017.05.19</td>
        <td>5</td>
        <td>문제점2</td>
      </tr>
      <tr>
        <td>3</td>
        <td>2017.09.28</td>
        <td>4</td>
        <td>문제점3</td>
      </tr>
      <tr>
        <td>4</td>
        <td>2017.08.22</td>
        <td>1</td>
        <td>문제점4</td>
      </tr>
      <tr>
        <td>5</td>
        <td>2016.10.26</td>
        <td>4</td>
        <td>문제점5</td>
      </tr>
      <tr>
        <td>6</td>
        <td>2017.09.26</td>
        <td>3</td>
        <td>문제점6</td>
      </tr>
      <tr>
        <td>7</td>
        <td>2018.01.02</td>
        <td>3</td>
        <td>문제점7</td>
      </tr>
      <tr>
        <td>8</td>
        <td>2017.04.17</td>
        <td>2</td>
        <td>문제점8</td>
      </tr>
      <tr>
        <td>9</td>
        <td>2017.10.22</td>
        <td>5</td>
        <td>문제점9</td>
      </tr>
    </tbody>
  </table>
  <br></br>
  <ul class= "nav justify-content-center" >
    <form class="form-inline" id="search">
      <input type="number" style="font-size:25px; width:150px; text-align:center;" placeholder="최소점수" min="1" max="5">
      <h1>&nbsp;~&nbsp;</h1>
      <input type="number" style="font-size:25px; width:150px; text-align:center;" placeholder="최대점수" min="1" max="5">
      <button type="submit" class="btn btn-large" type="button">검색</button>
    </form>
  </ul>

	<script type="text/javascript" src="js/diagnosis.js?ver=5"></script>
	<script type="text/javascript" src="js/evalRule.js?ver=2"></script>
	<script type="text/javascript" src="js/search.js?ver=2"></script>

</body>
</html>
	
