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

</head>
<body>
	<form method="get" action="docPageButton">
		<button type="submit" name="doctorUser">의사</button>
	</form>
	<form method="get" action="generalUserButton">
		<button type="submit" name="">일반 사용자</button>
	</form>
</body>
</html>