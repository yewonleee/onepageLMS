<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Page Title</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<style>
* {
  box-sizing: border-box;
}

/* Style the body */
body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}

/* Header/logo Title */
.header {
  padding: 30px;
  text-align: center;
  background: white;
  color: black;
}

ul {
  display: block;
  float: left;
  list-style-type: none;
  margin-top: 3px;
  margin-right: 0;
  /* margin:0; */
  padding: 0 0 70px 0;
  background-color: #f1f1f1;
  position: static;
  height: 100%;
  overflow: auto;
  text-align: center;
}

.profile{
  float:right; line-height:50px; font-size: 30px; font-weight: bold; margin-right: 20px;
}
.settings{
  float: right; line-height:50px; font-size: 30px; color: black; text-decoration: none; margin-right: 20px;
}

.logo{
  font-size:25px; font-weight: bold; display:inline-block; 
}

.guideline{
  display:inline-block; font-size:30px; color: black; text-decoration: none; margin-left: 30px;
}
.topNavBar{
  padding: 10px 15px 8px 50px; box-shadow: 3px 3px grey; position: -webkit-static; /* Safari & IE */
  position: static; top: 0;
}

h1{
  margin: 5px 15px;
}




@media only screen and (max-width: 1400px) {
  /* .margin-1 {margin-left: 50vw;} */
  .margin-2 {margin-left: 1%}
}

@media only screen and (max-width: 960px) {
  /* .margin-1 {margin-left: 30%;} */
  .margin-2 {margin-left: 1%}
}
@media only screen and (max-width: 700px) {
  /* .margin-1 {margin-left: 30%;} */
  .margin-2 {margin-left: 1%}
  .logo {
    font-size: 30px;
    font-weight: bold;
  }
  .guideline{
    font-size: 25px;
    margin-left: 5px;
  }
  .profile{
    font-size: 20px;
    margin-left: 5px;
    line-height: 40px;
  }
  .settings{
    font-size: 20px;
    margin-left: 5px;
    line-height: 40px;
  }
  .navbar a {
    float: none;
    width: 100%;
  }
  .title{
    font-size: 20px;
  }
  .img{
    width: 15px;
  }
  .fontSize{
    font-size: 12px;
  }
  
}


@media only screen and (max-width: 530px) {
  /* .margin-1 {margin-left: 30%;} */
  .margin-2 {margin-left: 1%}
  .logo {
    font-size: 22px;
    font-weight: bold;
  }
  .guideline{
    font-size: 22px;
    margin-left: 5px;
  }
  .profile{
    font-size: 20px;
    margin-left: 5px;
    line-height: 24px;
  }
  .settings{
    font-size: 20px;
    margin-left: 5px;
    line-height: 24px;
  }
  .navbar a {
    float: none;
    width: 100%;
  }
}


/* Responsive layout - when the screen is less than 700px wide, make the two columns stack on top of each other instead of next to each other */
/* @media screen and (max-width: 90%) {
  .row {   
    flex-direction: column;
  }
} */


/* Responsive layout - when the screen is less than 400px wide, make the navigation links stack on top of each other instead of next to each other */
@media screen and (max-width: 480px) {
  .logo {
    font-size: 20px;
    font-weight: bold;
  }
  .guideline{
    font-size: 20px;
    margin-left: 5px;
  }
  .profile{
    font-size: 18px;
    margin-left: 5px;
    line-height: 24px;
  }
  .settings{
    font-size: 18px;
    margin-left: 5px;
    line-height: 24px;
  }
  .navbar a {
    float: none;
    width: 100%;
  }
  .topNavBar{
    padding: 30px 10px;
  }
}

.content {
  overflow: auto;
  border: 3px solid #666;
  height: 100%;
}

/* all codes below should not be deleted */
/* .content div {
  padding: 2px;
} */

.content .classBar {
  padding: 0;
}


.menuBar {
  float: left;
  width: 2.5%; /* 45px; */
  height: 100%;
  text-align: center;
  border-right: 3px solid black;
}

.classBar {
  float:left; position:static; padding:1px 16px; height:100%;
  width: 13.5%; /* 200px; */
  border-right: 3px solid black;
}

.classContents{
  float: left;
  position:static; height:100%;
  width: 84%;
  border-right: 3px solid black;
}
html, body {
    margin: 0;
    height: 100%;
    overflow: hidden;
}
.img{
  width: 30px;
  height: auto;
  margin-top: 10px;
}
</style>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.3/css/fontawesome.min.css" integrity="sha384-wESLQ85D6gbsF459vf1CiZ2+rr+CsxRY0RpiF1tLlQpDnAgg6rwdsUF1+Ics2bni" crossorigin="anonymous">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"></head>
<body>
<div class="topNavBar">
  <span class="logo"> 
    <i class="fa fa-file-text-o" aria-hidden="true"></i> <span style="color: #ffca04"> 원페이지 LMS </span>
  </span>
  
  <i class="fa fa-bars fa-2x settings" aria-hidden="true"></i>
  <i class="fa fa-cog fa-2x settings" aria-hidden="true"></i>
  <i class="fa fa-user fa-2x profile" aria-hidden="true" ></i>
 
</div>

<div class="content">
  <div class="menuBar">
    
    <img src="https://storage.googleapis.com/gweb-uniblog-publish-prod/images/Google_Docs.max-500x500.png" alt="notice icon" class="img"> 
    <img src="https://storage.googleapis.com/gweb-uniblog-publish-prod/images/Google_Docs.max-500x500.png" alt="notice icon" class="img"> 
    <img src="https://storage.googleapis.com/gweb-uniblog-publish-prod/images/Google_Docs.max-500x500.png" alt="notice icon" class="img"> 
    <img src="https://storage.googleapis.com/gweb-uniblog-publish-prod/images/Google_Docs.max-500x500.png" alt="notice icon" class="img"> 
    <img src="https://storage.googleapis.com/gweb-uniblog-publish-prod/images/Google_Docs.max-500x500.png" alt="notice icon" class="img"> 
  </div>
  
  <div class="classBar" >
    <div style="font-size: 18px; line-height: 15px; height: 30%; overflow: auto; border-bottom: 3px solid black"> 
      <div style="padding: 10px; border-bottom: 3px solid black">
        My Classes
        <!-- text can be clicked by using onClick -->
        <div style="float: right"> + </div>
      </div>
    </div>
    <div style="font-size: 18px; line-height: 15px; height: 30%; overflow: auto; border-bottom: 3px solid black">
      <div style="padding: 10px; border-bottom: 3px solid black">
        Playlist
        <div style="float: right"> + </div>
      </div>
    </div>
    <div style="font-size: 18px; line-height: 15px; height: 40%; overflow: auto; border-bottom: 3px solid black">
      <div style="padding: 10px; border-bottom: 3px solid black">
        Attendance
        <div style="float: right"> + </div>
      </div>
    </div>
  </div>
  
  <div class="classContents">
    <h1>Getting Started! – class </h1>
    
    <pre style="font-size: 22px; overflow: auto">
      화상 강의 URL      	http://zoom.classURL여기에    
      공지사항
      Contents
          1장
      1차시 6/20
      2차시 6/21
      강의 영상 : http://강의영상PlaylistURL여기에 
      강의 퀴즈 :  https://forms.gle/강의퀴즈URL여기에
      과제제출 :  https://drives.gle/과제제출폴더URL여기에
      학습자료 업로드 방법
      Google Drive에 자료 파일 업로드 --> 해당 URL 복사 --> 여기에 붙여 넣기!  
                 
	 	 	-- 업로드한 파일 미리 보기 자동 생성

      ----
      
		화상 강의 URL      	http://zoom.classURL여기에    
      공지사항
      Contents
          1장
      1차시 6/20
      2차시 6/21
      강의 영상 : http://강의영상PlaylistURL여기에 
      강의 퀴즈 :  https://forms.gle/강의퀴즈URL여기에
      과제제출 :  https://drives.gle/과제제출폴더URL여기에
      학습자료 업로드 방법
      Google Drive에 자료 파일 업로드 --> 해당 URL 복사 --> 여기에 붙여 넣기!  
                 
	 	 	-- 업로드한 파일 미리 보기 자동 생성

      ----
    </pre>
  </div>
    
</div>

 


</body>
</html>
