<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" href="css/bootstrap.css">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-bs4.css" rel="stylesheet">
  	<link rel="stylesheet" href="css/bootstrap.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-bs4.js"></script>

<title> 지식나눔 TED카펫 </title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/simple-sidebar.css" rel="stylesheet">

</head>
<body>
 <div id="wrapper">

        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                    <a href="#">
                      <h1>TED</h1>
                    </a>
                </li>
                <li>
                  <a href="boardsummary.html">Science&Technology</a>
                </li>
                <li>
                    <a href="#">Economy</a>
                </li>
                <li>
                    <a href="#">Art</a>
                </li>
                <li>
                    <a href="#">Enviornment</a>
                </li>
                <li>
                    <a href="#">Society</a>
                </li>
                <li>
                    <a href="#">Education</a>
                </li>
                <li>
                    <a href="#">Self-development</a>
                </li>
                 <li>
                    <a href="#">Health&Medical</a>
                </li>
                
                
            </ul>
        </div>


<div id="page-content-wrapper">
            <div class="container-fluid">
    
                <h1>TED 지식나눔카펫</h1>
                <p>Ted를 좋아하는 사람들을 위한 토론장 <code></code>.</p>
                <a href="#menu-toggle" class="btn btn-secondary" id="menu-toggle">Subject Menu</a>
            </div>
        </div>
        


</form>
	
<div class="container">
	<table class="table table-hover">
		<tr>
			<td>번호</td>
			<td>이름</td>
			<td>제목</td>
			<td>날짜</td>
			<td>조회수</td>
		</tr>
		<c:forEach items="${list}" var="dto">
		<tr>
			<td>${dto.bId}</td>
			<td>${dto.bName}</td>
			<td>
				<c:forEach begin="0" end="${dto.bIndent}">-</c:forEach>
				<a href="content_view.do?bId=${dto.bId}">${dto.bTitle}</a></td>
			<td>${dto.bDate}</td>
			<td>${dto.bHit}</td>
		</tr>
		</c:forEach>
 		<tr>
			<td colspan="5"> <a href="write_view.do">글작성</a> </td>
		</tr>
 	</table>
	
	
	
<a href="write_view.do" class="btn btn-default pull-right">글작성</a>	
	<div class="text-center">
		<ul class="pagination"> 
		<li><a href=a href="#">1</a></li>
		<li><a href=a href="#">2</a></li>
		<li><a href=a href="#">3</a></li>
		<li><a href=a href="#">4</a></li>
		<li><a href=a href="#">5</a></li>
		</ul>
	</div>
</div>	
	
	 <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Menu Toggle Script -->
    <script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
    </script>
	
	
</body>
</html>