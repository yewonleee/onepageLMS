<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Class Outliner</title>
</head>

<!-- 자 어떻게 해야할지 생각을 해보자!
우선 텍스트에디터를 크게 띄워보자 
//우리가 원하는 것은 class화면의 전체가 에디터!
//우선은 게시판처럼 해보도록 하겠습니다..

사용자가 텍스트를 자유롭게 입력할 수 있도록 한다. 
	****탭/엔터를 눌렀을 때 bullet이 생성되도록 한다.
사용자가 입력한 텍스트가 db에 저장되도록 한다.
보여줄 때는 <pre>태그 등을 사용해서 db에 있는 내용 그대로 보여줄 수 있도록 한다. -->
 

<body onkeydown="myFunction(event)">

	<div id='dis'>
	
		<h1>Getting Started! - class</h1>
		
		<ul >
		  <li>화상 강의 URL</li>
		  <li>공지사항</li>
		  <li>Contents</li>
		</ul>
	
	</div>
	
	<!-- 지금 할일은 현재 화면에 출력되는 것 db에 저장하기 -->
	<!-- db에 저장된 것 화면으로 보여주기 -->
	<!-- 화면에서 내용 수정하면 db에도 저장되기 -->
	<!--엔터를 눌렀을 때 bullet이 나오도록(접었다 폈다 할 수 있도록) -->
	<!-- <input type = "button" value="-" onclick = "var target=document.querySelector('#data'); if(this.value === '-'){target.style.display='none';this.value=':';} else{target.style.display = 'block'; this.value = '-';}">
	 -->
	 
	 
	<button onclick="showToggle('data')">Try it</button>
	<p id="data" style="display:none;"> 내용!!! </p>  
	<!-- 내용 자리에 content가 보이도 -->
	
	<script>
		document.designMode = "on";
		
		function myFunction(event) {
		  if (event.keyCode == 9) {
		    // Execute command if user presses the TAB button:
		    document.execCommand("indent");
		    document.execCommand("insertUnorderedList");
		  }
		  
		  if (event.keyCode == 13) {
			 //Execute command if user presses the ENTER button:
		 	 //showToggle('data');
			 //여기서 어떻게 자동으로 토글버튼이 생기도록 하냐.
			 //엔터를 누르면 토글이 생기도
			 document.execCommand("insertUnorderedList");
		  }
		}
		
		function showToggle(id){
			//var target=document.querySelector('#data');
			var target = document.getElementById(id);
			/*
			if(this.value === '-'){
				target.style.display='none';this.value=':';
			}*/
			if (target.style.display === "none") {
			    target.style.display = "inline";
			} 
			else {
			    target.style.display = "none";
			 }	
		}
		 
	</script>

</body>

</html>