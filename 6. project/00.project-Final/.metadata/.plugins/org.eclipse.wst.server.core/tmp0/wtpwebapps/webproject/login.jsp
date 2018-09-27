<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<% System.out.println("--------------------"); %>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta name="viewport" content="width-device-width",initial-scale="1">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>
<link rel="stylesheet" href="css/bootstrap.css">
<title>Insert title here</title>
<style>
html,body{background-color:black;}

</style>

<script type="text/javascript">
if('${requestScope.errorNo}' == 'no'){
	alert("잘못된 비밀번호입니다.");
}
if('${requestScope.errorNo}' == 'nono'){
	alert("존재하지 않는 아이디입니다.");
}
</script>

</head>
<body>

<nav class="navbar navbar-defalut">
	<div id="page-content-wrapper">
            <div class="container-fluid">
            	<a href="TedMain.jsp"><img src="image/tedLogo.png" style="width: 500px;"></a>
			</div>
		</div>
</nav>
<div class="container"> </div>
<div class="clo-lg-4">
	<div class="jumbotron" style="padding-top:20px;"> 
	
		<h3 style="text-align: center;"> 로그인 </h3>
		
		<form method="post" action="MainController?command=login">
			<div class="form-group"> 
			 	<input type="text" class="form-control" placeholder="아이디" id="id" name="userID" maxlength="20"> 
			</div>
			<div class="form-group"> 
		 		<input type="password" class="form-control" placeholder="비밀번호" id="password" name="userPassword" maxlength="20"> 
			</div>
		 		<input type="submit" class="btn btn-primary form-control" value="로그인">
		 	<!-- <div class="collapse navbar-collapse" id="bs=example-navbar-collapse-1"></div>  -->
	 	</form>
	 </div>
	 <div class="col-lg-4"></div>
</div>
</body>
</html>