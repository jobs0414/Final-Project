<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
    <%@ page import="java.io.PrintWriter" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width-device-width",initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>메인 화면</title>
</head>
<body>
<%
String userID=null;
if(session.getAttribute("userID") != null) { 
	userID = (String) session.getAttribute("userID"); 
	
}
%>

<nav class="navbar navbar-defalut">
	<div class="navbar-header">
	 <button type="button" class="navbar-toggle collapsed"
	 data-toggle="collapse" data-target="abs-example-navbar-collapse" 
	 aria-expanded="false"> 
	 <span class="icon-bar"></span>
	 <span class="icon-bar"></span>
	 <span class="icon-bar"></span>
	 
	 </button>
	  
	  <a class="navbar-brand" href="TedMain.jsp">JSP 게시판 웹 사이트 </a>
	 
	</div>
	<div class="collapse navbar-collapse" id="bs=example-navbar-collapse-1"> 
	<ul class="nav navbar-nav"> 
	
	<li><a href="bbs.jsp">게시판</a>
	
	</ul>
	<%
	if(userID ==null) {  //로그인이 되어있지 않는다면, 

	%>
	
	<ul class="nav navbar-nav navbar-right">
	     <li calss="dropdown">  
	      <a href="#" class="dropdown-toggle" 
	       data-toggle="dropdown" role="button" aria-haspoppup="true"
	       aria-expanded="false">접속하기 <span class="caret"></span></a>
	       <ul class="dropdown-menu"> 
	       <li> <a href="login.jsp">로그인 </a></li> 
	       <li> <a href="join.jsp">회원가입 </a></li> 
	       
	</ul>
	}
	
	
	<% 
	
	}else { 
	
	%>
		
	<ul class="nav navbar-nav navbar-right">
	     <li class="dropdown">  
	      <a href="#" class="dropdown-toggle" 
	       data-toggle="dropdown" role="button" aria-haspoppup="true"
	       aria-expanded="false">회원관리 <span class="caret"></span></a>
	       <ul class="dropdown-menu"> 
	       <li> <a href="logoutAction.jsp">로그아웃 </a></li> 

	       </ul>
	<%
	}
	%>
	</li>
	</ul>
	
	</div>
</nav>


<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>
</body>
</html>