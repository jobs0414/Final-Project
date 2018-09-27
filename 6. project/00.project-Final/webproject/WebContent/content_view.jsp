<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
 <link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-bs4.css" rel="stylesheet">
<link rel="stylesheet" href="css/bootstrap.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-bs4.js"></script>

  
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title> 지식나눔 TED카펫 </title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/simple-sidebar.css" rel="stylesheet">

<style>      
#page-content-wrapper{background-color:black;}
.tablebbs{
	width:60%;
	max-width: 100%;
	background-color: transparent;
}
.tablebbs td, .tablebbs th {
	padding: .75rem;
	vertical-align: top;
	border-top: 1px solid #dee2e6
}

.tablebbs thead th {
	vertical-align: bottom;
	border-bottom: 2px solid #dee2e6
}
tr{font-size:15px;}

</style>    

</head>
<body>
<div id="page-content-wrapper">
    <a href="TedMain.jsp"><img src="image/tedLogo.png" style="width: 500px;"></a>
</div>
<div>   
       <h1>TED 지식나눔카펫</h1>
       <h4>&nbsp;&nbsp;&nbsp; TED를 좋아하는 사람들을 위한 토론장 </h4>
</div>
        
	    <table class="tablebbs" border=1>
        	<form action="modify.do" method="post">
			<input type="hidden" name="bId" value="${content_view.bId}">
			<tr>
				<td width=100;> 번호 </td>
				<td > ${content_view.bId} </td>
			</tr>
			<tr>
				<td> 조회수 </td>
				<td> ${content_view.bHit} </td>
			</tr>
			<tr>
				<td> 이름 </td>
				<td>${content_view.bName}</td>
			</tr>
			<tr>
				<td> 제목 </td>
				<td>${content_view.bTitle}</td>
			</tr>
			<tr>
					<td> 내용 </td>
				<td>${content_view.bContent}</td>
			</tr>
			
				<td colspan="5">
					<a href="list.do" class="btn btn-default" style="font-size:2rem;">목록보기</a></td>
			</tr>
	</form>
	</table>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	
</body>
</html>