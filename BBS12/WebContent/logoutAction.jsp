<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="user.UserDAO" %> <!-- 우리가 만든 클래스 가져옴 -->
    <%@ page import="java.io.PrintWriter" %>
    <% request.setCharacterEncoding("UTF-8"); %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Jsp 게시판 웹 사이트 </title>
</head>  <!--실질적으로 로그인 사용처리를 하는 페이지--> 
<body> 

<% 
  session.invalidate();

%>
<script> 
 location.href='main.jsp';
 

</script>

<!-- 로그인 처리 완벽하게 이루어짐  -->


</body>
</html>