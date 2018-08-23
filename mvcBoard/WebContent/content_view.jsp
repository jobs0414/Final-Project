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
        
 <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
        <div id="page-content-wrapper">
            <div class="container-fluid">
    
                <h1>TED 지식나눔카펫</h1>
                <p>Ted를 좋아하는 사람들을 위한 토론장 <code></code>.</p>
                <a href="#menu-toggle" class="btn btn-secondary" id="menu-toggle">Subject Menu</a>
            </div>
        </div>
        
        
	    <table class="table table-hover">
        	<form action="modify.do" method="post">
			<input type="hidden" name="bId" value="${content_view.bId}">
			<tr>
				<td> 번호 </td>
				<td> ${content_view.bId} </td>
			</tr>
			<tr>
				<td> 히트 </td>
				<td> ${content_view.bHit} </td>
			</tr>
			<tr>
				<td> 이름 </td>
				<td> <input type="text" name="bName" value="${content_view.bName}"></td>
			</tr>
			<tr>
				<td> 제목 </td>
				<td> <input type="text" name="bTitle" value="${content_view.bTitle}"></td>
			</tr>
			<tr>
					<td> 내용 </td>
				<td> <textarea name="bContent" rows="30" 
				      style="margin:0px; width:393px; height:560px;"></textarea> </td>
			</tr>
			
				<td colspan="5">
		<button type="submit" class="btn btn-default">입력</button>	
		&nbsp;&nbsp; <a href="list.do" class="btn btn-default">목록보기</a></td>
			</tr>
	</form>
	</table>
	
	
	  <!-- /#wrapper -->

    <!-- Bootstrap core JavaScript -->
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