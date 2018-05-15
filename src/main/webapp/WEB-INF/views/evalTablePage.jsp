
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
<title>Oriental Medical Expert System</title>

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
					<input class="form-control" type="text" name="patientName"
						id="search" placeholder="환자이름" aria-label="환자이름" />
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
        <th style="font-size:2rem">Name</th>
        <th style="font-size:2rem">Date</th>
        <th style="font-size:2rem">Score</th>
        <th style="font-size:2rem">Comment</th>
      </tr>
    </thead>
    <tbody id="evalRuleTable">
    	<c:forEach items="${memberList}" var="member">
    		<tr>
    			<td>${member.patientNum}</td>
    			<td>${member.patientName}</td>
    			<td>${member.date}</td>
    			<td>${member.score}</td>
    			<td>${member.comment}</td>
    		</tr>
    	</c:forEach>
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

	<script type="text/javascript" src="js/evalRule.js?ver=2.111"></script>
</body>
</html>
	
