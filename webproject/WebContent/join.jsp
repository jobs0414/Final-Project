<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>    <!--  회원가입 홈페이지 화면입니다. -->
<head>
<meta charset="utf-8">
<meta name="viewport" content="width-device-width",initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>Insert title here</title>
<style>
html,body{background-color:black; color:white;}
</style>
</head>
<body>


<nav class="navbar navbar-defalut">
	<div id="page-content-wrapper">
            <div class="container-fluid">
            	<a href="TedMain.jsp"><img src="image/tedLogo.png" style="width: 500px;"></a>
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspoppup="true"
						aria-expanded="false">접속하기 <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li class="active"><a href="login.jsp">로그인 </a></li>
							<li><a href="join.jsp">회원가입 </a></li>
						</ul></li>
				</ul>
			</div>
		</div>
</nav>
<div class="container"> </div>
<div class="clo-lg-4"></div>
<div class="clo-lg-4"></div>
	<div class="jumbotron" style="padding-top:20px;"> </div>
	
	
	<!-- <form method="post" action="joinAction.jsp"> -->
	
	<form method="post" action="joinAction.jsp">
		<input type="hidden" name="command" value="join">	
	 <h3 style="text-align: center;"> 회원가입 화면 </h3> 
	 <div class="form-group"> 
	 	<input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20"> 
	 	</div>
	 	
	 	
	 	 <div class="form-group"> 
	 	<input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20"> 

	 	
	 	
	 	<div class="form-group"> 
	 	<input type="text" class="form-control" placeholder="이름" name="userName" maxlength="20"> 
	 	</div>
	 	
	 	
	 	<div class="form-group" style="text-align:center;">
	 	<label class="btn btn-primary active">  <!--자동적으로 active 선택될 수 있게 -->
	 		<input type="radio" name="userGender" autocomplete="on" value="남자" checked>남자 </label>
	 		
	 		  
	<label class="btn btn-primary active">  <!--자동적으로 active 선택될 수 있게 -->
	 		<input type="radio" name="userGender" autocomplete="off" value="여자" checked>여자</label>
	 		
	 		  
	 		  <div class="form-group"> 
	 	<input type="email" class="form-control" placeholder="이메일" name="userEmail" maxlength="20"> 
	 	</div>
	 		  	 	<input type="submit" class="btn btn-primary form-control" value="회원가입">
	 		  
	 		
	 	
	 	</div> 
	 	</div>
	 	
	 </form>


<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>
</body>
</html>

