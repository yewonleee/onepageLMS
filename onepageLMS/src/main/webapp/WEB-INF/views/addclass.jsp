<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마법사로 강의 생성하기</title>
</head>
<body>
	<h1>마법사로 강의 생성하기</h1>
	
	<form action="addclass_action">
		<label for="classname">과목명: </label>
		<input type="text" id="classname" name="classname"><br/>
		
		<label for="week">수업 주차: 총</label>
		<input type="text" id="week" name="week">
		<label for="week">주차</label><br/>
		
		<label for="days">주차별 수업 일수: </label>
		<input type="text" id="days" name="days">
		<label for="days">회</label><br/>
		
		<label for="start">시작일 선택: </label><br/>
		
		<input type="submit" value="생성">
	</form>
</body>
</html>