<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Insert title here</title>
<style>
.loca{
   float: center;
   width: 23%;
   padding: 250px 300px;
   text-align: center;
}
 body{
   background-image: url("login.png");
   background-repeat:no-repeat;
   background-size:contain;
 }
 html,body{
  height:100%;
}
body{
  text-align:left;
}
body:before{
  content:'';
  height:100%;
  display:inline-block;
  vertical-align:middle;
}
button{
  background:#000000;
  color:#fff;
  border:none;
  position:relative;
  height:60px;
  font-size:1.6em;
  padding:0 2em;
  cursor:pointer;
  transition:800ms ease all;
  outline:none;
}
button:hover{
  background:#fff;
  color:#000000;
}
button:before,button:after{
  content:'';
  position:absolute;
  top:0;
  right:0;
  height:2px;
  width:0;
  background: #000000;
  transition:400ms ease all;
}
button:after{
  right:inherit;
  top:inherit;
  left:0;
  bottom:0;
}
button:hover:before,button:hover:after{
  width:100%;
  transition:800ms ease all;
}
</style>
</head>
<body>
    <div class="loca">
    <img src="img/login.png">
	<form method="get" action="docPageButton">
		<button type="submit" name="doctorUser" style="height:100px; width:600px; font:50px/1 굴림, Gulim, sans-serif;">의사</button>
	</form>
	<br>
	<form method="get" action="generalUserButton">
		<button type="submit" name="" style="height:100px; width:600px; font:50px/1 굴림, Gulim, sans-serif;">일반 사용자</button>
	</form>
	</div>
</body>
</html>