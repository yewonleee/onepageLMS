<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit class</title>
</head>
<body>
	<form method="post" action="../editok">
		<input type="hidden" name="id" value="${u.id}" /> 
		<input type="hidden" name="startDate" value="${u.startDate}" /> 

		<input type="text" name="className" value="${u.className}"/>
		checkbox: <input type="checkbox" name="active" value="${u.active}"/>

		<div class="content">
			<textarea name="classContent">${u.classContent}</textarea>
		</div>
		

		<button type="submit">수정완료</button>

	</form>
</body>
</html>