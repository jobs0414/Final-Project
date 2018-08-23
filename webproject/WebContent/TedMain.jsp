<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
.pop_video .pop_wrap .video_wrapper{position:relative; height:200px; overflow:hidden; max-width:100%;}
.box{float:right; padding:16px}
.main_box{float:right; weight:80px; height:70px}
#page-content-wrapper{background-color:black; padding:10px}
</Style>
</head>
<body>
    <div id="wrapper">
        <!-- Sidebar -->
        <div id="sidebar-wrapper">
			<ul class="sidebar-nav">
				<li class="sidebar-brand"><a href="#"> Start Bootstrap </a></li>
				<li><a href="#">Science&Technology</a></li>
				<li><a href="#">Economy</a></li>
				<li><a href="#">Art</a></li>
				<li><a href="#"></a></li>
				<li><a href="#">About</a></li>
				<li><a href="#">Services</a></li>
				<li><a href="#">Contact</a></li>
			</ul>
		</div>
        <!-- /#sidebar-wrapper -->
        <!-- Page Content -->
        <div id="page-content-wrapper">
            <div class="container-fluid">
            	<a href="TedMain.jsp"><img src="image/tedLogo.png" style="width: 500px;"></a>
            	<button class="main_box">게시판</button>
				<button class="main_box" onclick="window.open('join.jsp')">회원가입</button>
				<button class="main_box" onclick="window.open('login.jsp')">로그인</button>
            </div>
          		<a href="#menu-toggle" class="btn btn-secondary" id="menu-toggle">Topic Menu</a>
        	</div>
		<div class="pop_area pop_video">
			<div class="pop_wrap" style="top: 100px">
				<div class="video_wrapper">
					<iframe width="100%" height="100%"
src="https://www.youtube.com/embed/mQ-ZfhN7nRo?rel=0;amp;autoplay=1;controls=0;loop=1&playlist=mQ-ZfhN7nRo"
						frameborder="0" allow="autoplay; encrypted-media" allowfullscreen="allowfullscreen"></iframe>
				</div>
			</div>
		</div>
	

<div class="topicTable" style="float:left; padding: 30px; margin-right:30px; width: 700px; heigth: 750px">
   <div>
      <button type="button" class="btn btn-primary btn-lg" style="width: 200px;" data-toggle="modal" data-target="#myModal" onclick="searchCount('Economy')">
         <img src="image/economic.jpg" alt="Norway" class="modal-image" style="width:200px"><br>Economy
      </button>
      <!-- Modal -->
      <div class="modal fade" id="myModal" tabindex="-1" role="dialog"
         aria-labelledby="myModalLabel" aria-hidden="true">
         <div class="modal-dialog">
            <div class="modal-content">
               <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal"
                     aria-label="Close">
                     <span aria-hidden="true">×</span>
                  </button>
               </div>
               <div class="modal-body">...</div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>

      <button type="button" class="btn btn-primary btn-lg" style="width: 200px;" data-toggle="modal" data-target="#myModal2" onclick="searchCount('Art')">
         <img src="image/art.jpg" alt="Norway" class="modal-image"><br>Art
      </button>
      <!-- Modal -->
      <div class="modal fade" id="myModal2" tabindex="-1" role="dialog"
         aria-labelledby="myModalLabel" aria-hidden="true">
         <div class="modal-dialog">
            <div class="modal-content">
               <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal"aria-label="Close">
                     <span aria-hidden="true">×</span></button>
               </div>
               <div class="modal-body">five</div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>

      <button type="button" class="btn btn-primary btn-lg" style="width: 200px;" data-toggle="modal" data-target="#myModal3" onclick="searchCount('Health_Medical')">
         <img src="image/health&medical.jpg" alt="Norway" class="modal-image"><br>Health_Medical</button>
      <!-- Modal -->
      <div class="modal fade" id="myModal3" tabindex="-1" role="dialog"
         aria-labelledby="myModalLabel" aria-hidden="true">
         <div class="modal-dialog">
            <div class="modal-content">
               <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal"aria-label="Close">
                     <span aria-hidden="true">×</span></button>
               </div>
               <div class="modal-body">four</div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
   </div>

   <div>
      <button type="button" class="btn btn-primary btn-lg" style="width: 200px;" data-toggle="modal" data-target="#myModal4" onclick="searchCount('Self-development')">
         <img src="image/self_development.jpg" alt="Norway" class="modal-image"><br>Self-development
      </button>
      <!-- Modal -->
      <div class="modal fade" id="myModal4" tabindex="-1" role="dialog"
         aria-labelledby="myModalLabel" aria-hidden="true">
         <div class="modal-dialog">
            <div class="modal-content">
               <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal"aria-label="Close">
                  <span aria-hidden="true">×</span></button>
               </div>
               <div class="modal-body">이한나</div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>

      <button type="button" class="btn btn-primary btn-lg" style="width: 200px;" data-toggle="modal" data-target="#myModal5" onclick="searchCount('Politics')">
         <img src="image/politics.jpg" alt="Norway" class="modal-image"><br>Politics
      </button>
      <!-- Modal -->
      <div class="modal fade" id="myModal5" tabindex="-1" role="dialog"
         aria-labelledby="myModalLabel" aria-hidden="true">
         <div class="modal-dialog">
            <div class="modal-content">
               <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal"aria-label="Close">
                     <span aria-hidden="true">×</span></button>
               </div>
               <div class="modal-body">
         
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>

      <button type="button" class="btn btn-primary btn-lg" style="width: 200px;" data-toggle="modal" data-target="#myModal6" onclick="searchCount('Environment')">
         <img src="image/environment.jpg" alt="Norway" class="modal-image"><br>Environment
      </button>
      <!-- Modal -->
      <div class="modal fade" id="myModal6" tabindex="-1" role="dialog"
         aria-labelledby="myModalLabel" aria-hidden="true">
         <div class="modal-dialog">
            <div class="modal-content">
               <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal"aria-label="Close">
                     <span aria-hidden="true">×</span></button>
               </div>
               <div class="modal-body">six</div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
   </div>

   <div>
      <button type="button" class="btn btn-primary btn-lg" style="width: 200px;" data-toggle="modal" data-target="#myModal7" onclick="searchCount('Society')">
         <img src="image/society.jpg" alt="Norway" class="modal-image"><br>Society
      </button>
      <!-- Modal -->
      <div class="modal fade" id="myModal7" tabindex="-1" role="dialog"
         aria-labelledby="myModalLabel" aria-hidden="true">
         <div class="modal-dialog">
            <div class="modal-content">
               <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal"aria-label="Close">
                     <span aria-hidden="true">×</span></button>
               </div>
               <div class="modal-body">nine</div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>

      <button type="button" class="btn btn-primary btn-lg" style="width: 200px;" 
         data-toggle="modal" data-target="#myModal8"   onclick="searchCount('Technology_Science')">
         <img src="image/technology.jpg" alt="Norway" class="modal-image" ><br>Technology_Science
      </button>
      <!-- Modal -->
      <div class="modal fade" id="myModal8" tabindex="-1" role="dialog"
         aria-labelledby="myModalLabel" aria-hidden="true">
         <div class="modal-dialog">
            <div class="modal-content">
               <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                     <span aria-hidden="true">×</span>
                  </button>
               </div>
               <div class="modal-body">test</div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>

      <button type="button" class="btn btn-primary btn-lg" style="width: 200px;" data-toggle="modal" data-target="#myModal9" onclick="searchCount('Education')">
         <img src="image/education.png" alt="Norway" class="modal-image"><br>Education
      </button>
      <!-- Modal -->
      <div class="modal fade" id="myModal9" tabindex="-1" role="dialog"
         aria-labelledby="myModalLabel" aria-hidden="true">
         <div class="modal-dialog">
            <div class="modal-content">
               <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal"
                     aria-label="Close">
                     <span aria-hidden="true">×</span>
                  </button>
               </div>
               <div class="modal-body">three</div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>


<div class="realTable" style="width:100px; float:left;">
	<jsp:include page="real.html"/>
</div>
</div>
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