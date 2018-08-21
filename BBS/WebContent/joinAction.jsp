<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="user.UserDAO" %> <!-- 우리가 만든 클래스 가져옴 -->
    <%@ page import="java.io.PrintWriter" %>
    <% request.setCharacterEncoding("UTF-8"); %>
    <jsp:useBean id="user" class="user.User" scope="page" /> 
    <jsp:setProperty name="user" property="userID"/> 
     <jsp:setProperty name="user" property="userPassword"/> 
      <jsp:setProperty name="user" property="userName"/> 
       <jsp:setProperty name="user" property="userGender"/> 
        <jsp:setProperty name="user" property="userEmail"/> 
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
	script.println("location.href='main.jsp'"); //이전의 페이지로 돌려보냄 
	script.println("</script>"); 
	
	//위에 이미 로그인이 된 사람 또 로그인 할 수 없게 만듬
}

if (user.getUserID()==null || user.getUserPassword() ==null || user.getUserName() ==null 
|| user.getUserGender()==null || user.getUserEmail()==null ) { 
	PrintWriter script = response.getWriter(); 
	script.println("<script>"); 
	script.println("alert('입력이 안된 사항이 있습니다.')");
	script.println("history.back()"); //이전의 페이지로 돌려보냄 
	script.println("</script>"); 
}else { 
	UserDAO userDAO = UserDAO.getInstance(); 
	int result = userDAO.join(user);
	if(result==-1) { 
		PrintWriter script = response.getWriter(); 
		script.println("<script>"); 
		script.println("alert('이미 존재하는 아이디입니다')");
		script.println("history.back()"); //이전의 페이지로 돌려보냄 
		script.println("</script>"); 
	}


	else  { 
		session.setAttribute("userID",user.getUserID());
		PrintWriter script = response.getWriter(); 
		script.println("<script>"); 
		script.println("location.href='main.jsp'");
		script.println("history.back()"); //이전의 페이지로 돌려보냄 
		script.println("</script>"); 
	}
	
}




%>


<!-- 로그인 처리 완벽하게 이루어짐  -->


</body>
</html>