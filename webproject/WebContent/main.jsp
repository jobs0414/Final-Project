<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>final-project</title>
<%--<meta http-equiv="refresh" content="10; URL=main.jsp">--%>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/modal_pop.css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", sans-serif}
.box{float:right; padding:16px}
.main_box{weight:80px; height:50px}
</style>

<body class="w3-light-grey w3-content" style="max-width:2000px">

<!-- Sidebar/menu -->
<div class="w3-sidebar w3-collapse w3-white w3-animate-left" style="z-index:1; width:500px;" id="mySidebar"><br>
	<a href="main.jsp">
		<button class="sidemenu"; style="width:100%; height:100px; font-size:80px;">TED
		</button></a>
			<jsp:include page="real.html"/>
</div>

<!-- !PAGE CONTENT! -->
	<div class="w3-main" style="margin-left: 500px">
		<!-- Header -->
		<header id="portfolio">
			<a href="#"><img src="image/technology.jpg" style="width: 65px;"
				class="w3-circle w3-right w3-margin w3-hide-large w3-hover-opacity"></a>
			<span class="w3-button w3-hide-large w3-xxlarge w3-hover-text-grey"
				onclick="w3_open()"><i class="fa fa-bars"></i></span>
			<div class="w3-row-padding w3-padding-16" id="about">
				<div class="box">
					<button class="main_box">로그인</button>
					<button class="main_box">
						<i class="fa fa-diamond w3-margin-right"></i>회원가입
					</button>
					<button class="main_box">
						<i class="fa fa-photo w3-margin-right"></i>게시판
					</button>
				</div>
			</div>
		</header>

	<!-- First Photo Grid-->
  <div class="w3-row-padding">
    <div class="w3-third w3-container w3-margin-bottom">
      <button id="myBtn"><img src="image/technology.jpg" alt="Norway" style="width:100%" class="modal-image" id="searchWord" 
				onclick="searchCount('Technology_Science')">Technology_Science</button>
	<!-- The Modal -->
		<div id="myModal" class="modal">

	<!-- Modal content -->
  		<div class="modal-content">
    		<div class="modal-header">
      			<span class="close">&times;</span>
      				<h2>Modal Header</h2>
   			</div>
    			<div class="modal-body">
    				<p>hello world</p>
    			</div>
    				<div class="modal-footer">
      					<h3>Modal Footer</h3>
    				</div>
  		</div>

		</div>
    </div>
    <div class="w3-third w3-container w3-margin-bottom">
      	<button id="myBtn2"><img src="image/economic.jpg" alt="Norway" style="width:100%" class="modal-image" id="searchWord" 
				onclick="searchCount('Economy')">Economy</button>
	<!-- The Modal -->
		<div id="myModal2" class="modal">

	<!-- Modal content -->
  		<div class="modal-content">
    		<div class="modal-header">
      			<span class="close">&times;</span>
      				<h2>Modal Header</h2>
   			</div>
    			<div class="modal-body">
    				<p>hello world</p>
    			</div>
    				<div class="modal-footer">
      					<h3>Modal Footer</h3>
    				</div>
  		</div>

		</div>
    </div>
    <div class="w3-third w3-container">
     <button id="myBtn3"><img src="image/education.png" alt="Norway" style="width:100%" class="modal-image" id="searchWord" 
				onclick="searchCount('Education')">Education</button>
	<!-- The Modal -->
		<div id="myModal3" class="modal">

	<!-- Modal content -->
  		<div class="modal-content">
    		<div class="modal-header">
      			<span class="close">&times;</span>
      				<h2>Modal Header</h2>
   			</div>
    			<div class="modal-body">
    				<p>hello world</p>
    			</div>
    				<div class="modal-footer">
      					<h3>Modal Footer</h3>
    				</div>
  		</div>

		</div>
    </div>
    </div>
    
  <!-- Second Photo Grid-->
  <div class="w3-row-padding">
    <div class="w3-third w3-container w3-margin-bottom">
      <button id="myBtn4"><img src="image/health&medical.jpg" alt="Norway" style="width:100%" class="modal-image" id="searchWord" 
				onclick="searchCount('Health_Medical')">Health_Medical</button>
	<!-- The Modal -->
		<div id="myModal4" class="modal">

	<!-- Modal content -->
  		<div class="modal-content">
    		<div class="modal-header">
      			<span class="close">&times;</span>
      				<h2>Modal Header</h2>
   			</div>
    			<div class="modal-body">
    				<p>hello world</p>
    			</div>
    				<div class="modal-footer">
      					<h3>Modal Footer</h3>
    				</div>
  		</div>

		</div>
    </div>
    <div class="w3-third w3-container w3-margin-bottom">
      <button id="myBtn5"><img src="image/art.jpg" alt="Norway" style="width:100%" class="modal-image" id="searchWord" 
				onclick="searchCount('Art')">Art</button>
	<!-- The Modal -->
		<div id="myModal5" class="modal">

	<!-- Modal content -->
  		<div class="modal-content">
    		<div class="modal-header">
      			<span class="close">&times;</span>
      				<h2>Modal Header</h2>
   			</div>
    			<div class="modal-body">
    				<p>hello world</p>
    			</div>
    				<div class="modal-footer">
      					<h3>Modal Footer</h3>
    				</div>
  		</div>

		</div>
    </div>
    <div class="w3-third w3-container">
      <button id="myBtn6"><img src="image/environment.jpg" alt="Norway" style="width:100%" class="modal-image" id="searchWord" 
				onclick="searchCount('Environment')">Environment</button>
	<!-- The Modal -->
		<div id="myModal6" class="modal">

	<!-- Modal content -->
  		<div class="modal-content">
    		<div class="modal-header">
      			<span class="close">&times;</span>
      				<h2>Modal Header</h2>
   			</div>
    			<div class="modal-body">
    				<p>hello world</p>
    			</div>
    				<div class="modal-footer">
      					<h3>Modal Footer</h3>
    				</div>
  		</div>

		</div>
    </div>
  </div>

<!-- Third Photo Grid-->
  <div class="w3-row-padding">
    <div class="w3-third w3-container w3-margin-bottom">
      <button id="myBtn7"><img src="image/self_development.jpg" alt="Norway" style="width:100%" class="modal-image" id="searchWord" 
				onclick="searchCount('Self-development')">Self-development</button>
	<!-- The Modal -->
		<div id="myModal7" class="modal">

	<!-- Modal content -->
  		<div class="modal-content">
    		<div class="modal-header">
      			<span class="close">&times;</span>
      				<h2>Modal Header</h2>
   			</div>
    			<div class="modal-body">
    				<p>hello world</p>
    			</div>
    				<div class="modal-footer">
      					<h3>Modal Footer</h3>
    				</div>
  		</div>

		</div>
    </div>
    <div class="w3-third w3-container w3-margin-bottom">
       <button id="myBtn8"><img src="image/politics.jpg" alt="Norway" style="width:100%" class="modal-image" id="searchWord" 
				onclick="searchCount('Politics')">Politics</button>
	<!-- The Modal -->
		<div id="myModal8" class="modal">

	<!-- Modal content -->
  		<div class="modal-content">
    		<div class="modal-header">
      			<span class="close">&times;</span>
      				<h2>Modal Header</h2>
   			</div>
    			<div class="modal-body">
    				<p>hello world</p>
    			</div>
    				<div class="modal-footer">
      					<h3>Modal Footer</h3>
    				</div>
  		</div>

		</div>
    </div>
    <div class="w3-third w3-container">
       <button id="myBtn9"><img src="image/society.jpg" alt="Norway" style="width:100%" class="modal-image" id="searchWord" 
				onclick="searchCount('Society')">Society</button>
	<!-- The Modal -->
		<div id="myModal9" class="modal">

	<!-- Modal content -->
  		<div class="modal-content">
    		<div class="modal-header">
      			<span class="close">&times;</span>
      				<h2>Modal Header</h2>
   			</div>
    			<div class="modal-body">
    				<p>hello world</p>
    			</div>
    				<div class="modal-footer">
      					<h3>Modal Footer</h3>
    				</div>
  		</div>

		</div>
    </div>
  </div>

  <!-- Footer -->
  <footer class="w3-container w3-padding-32 w3-dark-grey">
  <div class="w3-row-padding">
    <div class="w3-third">
      <h3>FOOTER</h3>
      <p>Praesent tincidunt sed tellus ut rutrum.</p>
      <p>Powered by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank">w3.css</a></p>
    </div>
  
    <div class="w3-third">
      <h3>BLOG POSTS</h3>
      <ul class="w3-ul w3-hoverable">
        <li class="w3-padding-16">
          <img src="image/workshop.jpg" class="w3-left w3-margin-right" style="width:50px">
          <span class="w3-large">Lorem</span><br>
          <span>Sed mattis nunc</span>
        </li>
        <li class="w3-padding-16">
          <img src="image/gondol.jpg" class="w3-left w3-margin-right" style="width:50px">
          <span class="w3-large">Ipsum</span><br>
          <span>Praes tinci sed</span>
        </li> 
      </ul>
    </div>

    <div class="w3-third">
      <h3>POPULAR TAGS</h3>
      <p>
        <span class="w3-tag w3-black w3-margin-bottom">Travel</span> 
        <span class="w3-tag w3-grey w3-small w3-margin-bottom">New York</span> 
        <span class="w3-tag w3-grey w3-small w3-margin-bottom">London</span>
        <span class="w3-tag w3-grey w3-small w3-margin-bottom">IKEA</span> 
        <span class="w3-tag w3-grey w3-small w3-margin-bottom">NORWAY</span> 
        <span class="w3-tag w3-grey w3-small w3-margin-bottom">DIY</span>
      </p>
    </div>

  </div>
  </footer>
  
  <div class="w3-black w3-center w3-padding-24">Powered by w3.css</div>
    
<!-- End page content -->
</div>

<script>
// Script to open and close sidebar
function w3_open() {
    document.getElementById("mySidebar").style.display = "block";
    document.getElementById("myOverlay").style.display = "block";
}
 
function w3_close() {
    document.getElementById("mySidebar").style.display = "none";
    document.getElementById("myOverlay").style.display = "none";
}
</script>

</body>
</html>