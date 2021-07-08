<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Attendance</title>
</head>
<body>

	<h2>${u.className}출석표</h2>
	<p>${u.startDate}</p>
	<button>출석표 수정</button>

	<p>학생목록</p>
	<button>학생 추가</button>
	<c:forEach items="${students}" var="v">
		<td>${v.studentName}</td>
		<td>${v.emil}</td>
	</c:forEach>

	<div class="list">
		<table id="list" border="1" bordercolor="blue">

			<tr>수업 날짜</tr>
			<tr>
				<th>화상강의</th>
				<th>영상</th>
			</tr>
			<c:forEach items="${attendance}" var="u">
				<td>${u.external}</td>
				<td>${u.internal}</td>
			</c:forEach>
		</table>
	</div>

</body>
</html>