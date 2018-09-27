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

</head>
<body>

<style>      
#page-content-wrapper{background-color:black;}
h1{text-align:center;}
td{font-size:15px;}
</style>    

</head>
<body>
<div id="page-content-wrapper">
    <a href="TedMain.jsp"><img src="image/tedLogo.png" style="width: 500px;"></a>
</div>
<div>   
       <h1>TED 지식나눔카펫</h1>
</div>

	<table class="table table-hover"> 
		<form action="write.do" method="post">
		
			<tr>
				<td> 이름 </td>
				<td> <input type="text" name="bName" size = "50"> </td>
			</tr>
			
			<tr>
				<td> 제목 </td>
				<td> <input type="text" name="bTitle" size = "50"> </td>
			</tr>
			
			<tr>
	
				<td> 내용 </td>
  				<td><textarea type="text" name="bContent" rows="30" 
				      style="margin:0px; width:393px; height:560px;"></textarea> </td>
			</tr>
			
			<tr>
			<td colspan="5">
				<button type="submit" class="btn btn-default">입력</button>	
					&nbsp;&nbsp; <a href="list.do" class="btn btn-default">목록보기</a></td>
			</tr>
			
			
		</form>
	</table>
	
</body>
</html>