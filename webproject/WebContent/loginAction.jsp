<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="model.UserDAO" %> <!-- 우리가 만든 클래스 가져옴 -->
    <%@ page import="java.io.PrintWriter" %>
    <% request.setCharacterEncoding("UTF-8"); %>
    <jsp:useBean id="user" class="modelDTO.UserDTO" scope="page" /> 
    <jsp:setProperty name="user" property="userID"/> 
     <jsp:setProperty name="user" property="userPassword"/> 
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Jsp 게시판 웹 사이트 </title>
</head>  <!--실질적으로 로그인 사용처리를 하는 페이지--> 
<body> 

<% 
String userID=null;
if(session.getAttribute("userID") !=null) { 
	userID=(String) session.getAttribute("userID");
}
if(userID !=null) { 
	PrintWriter script = response.getWriter(); 
	script.println("<script>"); 
	script.println("alert('이미 로그인이 되어있습니다.')");
	script.println("location.href='TedMain.jsp"); //이전의 페이지로 돌려보냄 
	script.println("</script>"); 
	
	//위에 이미 로그인이 된 사람 또 로그인 할 수 없게 만듬
}


UserDAO userDAO = UserDAO.getInstance(); 
int result = userDAO.login(user.getUserID(),user.getUserPassword()); 
if(result==1) {
	session.setAttribute("userID",user.getUserID());
	PrintWriter script = response.getWriter(); 
	script.println("<script>"); 
	script.println("location.href='TedMain.jsp'");
	script.println("</script>"); 
}

else if (result==0) { 
	PrintWriter script = response.getWriter(); 
	script.println("<script>"); 
	script.println("alert('비밀번호가 틀립니다.')");
	script.println("history.back()"); //이전의 페이지로 돌려보냄 
	script.println("</script>"); 
}

else if (result==-1) { 
	PrintWriter script = response.getWriter(); 
	script.println("<script>"); 
	script.println("alert('존재하지 않는 아이디입니다.')");
	script.println("history.back()"); //이전의 페이지로 돌려보냄 
	script.println("</script>"); 
}

else if (result==-2) { 
	PrintWriter script = response.getWriter(); 
	script.println("<script>"); 
	script.println("alert('데이터베이스 오류가 발생했습니다.')");
	script.println("history.back()"); //이전의 페이지로 돌려보냄 
	script.println("</script>"); 
}

%>


<!-- 로그인 처리 완벽하게 이루어짐  -->


</body>
</html>