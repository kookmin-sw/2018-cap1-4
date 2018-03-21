
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

</style>
</head>
<body>
	<div class="ui_container">
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="collapse navbar-collapse" id="navbarsExample09">
			<ul class="navbar-nav nav nav-tabs mr-auto" role="tablist">
				<li class="active"><a href="#tab1" data-toggle="tab"
					class="nav-link active" role="tab" style="color: black;">진단</a></li>
				<li><a href="evalTablePage" class="nav-link" role="tab"
					style="color: black;">평가</a></li>
				<li><a href="receptionPage" class="nav-link" role="tab"
					style="color: black;">환자접수</a></li>
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
