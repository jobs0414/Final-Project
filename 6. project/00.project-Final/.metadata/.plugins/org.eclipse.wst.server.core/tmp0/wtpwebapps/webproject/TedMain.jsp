<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="stylesheet" type="text/css" href="css/modal_pop.css">
    <link rel="stylesheet" type="text/css" href="css/TedMain.css">
    <%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>    
	<%@ page import="java.util.ArrayList"%>
	<%@ page import="model.*" %>
	<%@ page import="modelDTO.*" %>

    <title>final-project</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/simple-sidebar.css" rel="stylesheet">
<Style>
/* .pop_video .pop_wrap .video_wrapper{position:relative; height:200px; overflow:hidden; max-width:100%;} */
.videobox{text-align: center;}
.box{float:right; padding:16px}
.main_box{float:right; weight:80px; height:70px}
#page-content-wrapper{background-color:black; padding:10px}
</Style>
<script type="text/javascript">
if('${requestScope.message}' == 'yes'){
	alert("회원가입을 축하드립니다!");
}
</script>

</head>
<body>
    <div id="wrapper">
        <!-- Page Content -->
        <div id="page-content-wrapper">
            <div class="container-fluid">
            	<a href="TedMain.jsp"><img src="image/tedLogo.png" style="width: 500px;"></a>
            	<button class="main_box" onclick="go();">게시판</button>
            	<script>
		               function go(){
		                  if('${requestScope.permit}' == 'permit'){
		                     return window.location.href= 'list.do';
		                  } else {
		                     alert("로그인 후 이용 가능합니다.");
		                  }
		               }
               </script>
				<button class="main_box" onclick="window.location.href = 'join.jsp';">회원가입</button>
				<c:if test="${empty sessionScope.sid}">
				<button class="main_box" onclick="window.location.href = 'login.jsp';">로그인</button>
				</c:if>
				<c:if test="${not empty sessionScope.sid}">
				<button class="main_box" onclick="window.location.href = 'MainController?command=logout';">로그아웃</button>
				</c:if> 
			</div>
        </div>
        	<div class="videobox"style="background-color:black">
				<video width="1000" height="400" loop autoplay muted> 
				<source	src="video/ted.mp4" type="video/mp4"></video>
			</div>

<div class="topicTable" style="float:left; padding: 30px; margin-right:30px; width: 700px; heigth: 750px">
   <div>
      <button type="button" class="topicbtn" style="width: 200px;" onclick="searchCount('Technology_Science');location='page7.jsp'">
         <img src="image/technology.jpg" alt="Norway" style="width:100%" ><br>Technology_Science
      </button>

      <button type="button" class="topicbtn" style="width: 200px;" onclick="searchCount('Politics');go2();">
         <img src="image/politics.jpg" alt="Norway" style="width:100%"><br>Politics
      </button>
      <script>
		               function go2(){
		                  if('${requestScope.permit}' == 'permit'){
		                     return window.location.href= 'page4.jsp';
		                  } else {
		                     alert("로그인 후 이용 가능합니다.");
		                  }
		               }
               </script>

      <button type="button" class="topicbtn" style="width: 200px;" onclick="searchCount('Health_Medical');go3();">
         <img src="image/health&medical.jpg" alt="Norway" style="width:100%"><br>Health_Medical
      </button>
      <script>
		               function go3(){
		                  if('${requestScope.permit}' == 'permit'){
		                     return window.location.href= 'page2.jsp';
		                  } else {
		                     alert("로그인 후 이용 가능합니다.");
		                  }
		               }
               </script>
  </div>

   <div>
      <button type="button" class="topicbtn" style="width: 200px;" onclick="searchCount('Self-development');go4();">
         <img src="image/self_development.jpg" alt="Norway" style="width:100%"><br>Self-development
      </button>
      <script>
		               function go4(){
		                  if('${requestScope.permit}' == 'permit'){
		                     return window.location.href= 'page3.jsp';
		                  } else {
		                     alert("로그인 후 이용 가능합니다.");
		                  }
		               }
               </script>

      <button type="button" class="topicbtn" style="width: 200px;" onclick="searchCount('Education');go5()">
         <img src="image/education.png" alt="Norway" style="width:100%"><br>Education
      </button>
      <script>
		               function go5(){
		                  if('${requestScope.permit}' == 'permit'){
		                     return window.location.href= 'page8.jsp';
		                  } else {
		                     alert("로그인 후 이용 가능합니다.");
		                  }
		               }
               </script>

      <button type="button" class="topicbtn" style="width: 200px;" onclick="searchCount('Environment');go6();">
         <img src="image/environment.jpg" alt="Norway" style="width:100%"><br>Environment
      </button>
      <script>
		               function go6(){
		                  if('${requestScope.permit}' == 'permit'){
		                     return window.location.href= 'page5.jsp';
		                  } else {
		                     alert("로그인 후 이용 가능합니다.");
		                  }
		               }
               </script>
   </div>

   <div>
      <button type="button" class="topicbtn" style="width: 200px;" onclick="searchCount('Society');go7();">
         <img src="image/society.jpg" alt="Norway" style="width:100%"><br>Society
      </button>
      <script>
		               function go7(){
		                  if('${requestScope.permit}' == 'permit'){
		                     return window.location.href= 'page6.jsp';
		                  } else {
		                     alert("로그인 후 이용 가능합니다.");
		                  }
		               }
               </script>
	<button type="button" class="topicbtn" style="width: 200px;" onclick="searchCount('Economy');go8();">
         <img src="image/economic.jpg" alt="Norway" style="width:100%"><br>Economy
      </button>
<script>
		               function go8(){
		                  if('${requestScope.permit}' == 'permit'){
		                     return window.location.href= 'page0.jsp';
		                  } else {
		                     alert("로그인 후 이용 가능합니다.");
		                  }
		               }
               </script>
      <button type="button" class="topicbtn" style="width: 200px;" onclick="searchCount('Art');go9();">
         <img src="image/art.jpg" alt="Norway" style="width:100%"><br>Art
      </button>
      <script>
		               function go9(){
		                  if('${requestScope.permit}' == 'permit'){
		                     return window.location.href= 'page1.jsp;';
		                  } else {
		                     alert("로그인 후 이용 가능합니다.");
		                  }
		               }
               </script>
	</div>
</div>


<div class="realTable" style="width:100px; float:left;">
	<jsp:include page="real.html"/>
</div>
</div>
	<!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>
</html>