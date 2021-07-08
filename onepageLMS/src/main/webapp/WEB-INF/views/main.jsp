<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>OnepageLMS</title>
</head>
<body>

	
	
	<div class="classlist">
		<h2>MyClasses <a href="addclass">+</a></h2> 
		
		
		<c:forEach items="${list}" var="u">
			<p onclick="location.href='detail/${u.id}'">${u.className}</p> <br/>
		</c:forEach>
	</div>
	
	<div>
		<h2>Attendance</h2>
		<!-- 
		<c:forEach items="${attendance}" var="v">
			<a href="attendance_detail/${v.id} }">class 생성</a>
		</c:forEach>	
		 -->
		
	</div>

</body>
</html>