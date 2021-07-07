<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Class</title>
</head>
<body>
	<h2>${u.className}</h2>
	<p>${u.startDate}</p>
	<p>active--> ${u.active}</p>
	<p>${u.classContent}</p>
	
	<a href="../editform/${u.id}">수정하기</a>
	
</body>
</html>