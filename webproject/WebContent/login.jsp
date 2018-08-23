<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width-device-width",initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>Insert title here</title>
<style>
html,body{background-color:black;}
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
<div class="clo-lg-4">
	<div class="jumbotron" style="padding-top:20px;"> 
	
	 <form method="post" action="MainController">
		
		<input type="hidden" name="command" value="login">
		
			
		 <h3 style="text-align: center;"> 로그인 화면 </h3> 
		 
		 <div class="form-group"> 
		 	<input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20"> 
		 	</div>
		 	 <div class="form-group"> 
		 	<input type="text" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20"> 
		 	</div>
		 	<input type="submit" class="btn btn-primary form-control" value="로그인">
		 	
		 	<div class="collapse navbar-collapse" id="bs=example-navbar-collapse-1"></div> 
		<ul class="nav navbar-nav"> 
		
		</ul>
		 	
	 	
	 </form>
	 
	 </div>
	 <div class="col-lg-4"></div>
</div>


<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>
</body>
</html>