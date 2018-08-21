<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="bbs.BbsDAO, bbs.Bbs" %> <!-- 우리가 만든 클래스 가져옴 -->
    <%@ page import="java.io.PrintWriter" %>
    <% request.setCharacterEncoding("UTF-8"); %>
    <jsp:useBean id="bbs" class="bbs.Bbs" scope="page" /> 
    <jsp:setProperty name="bbs" property="bbsTitle"/> 
     <jsp:setProperty name="bbs" property="bbsContent"/> 

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>JSP 게시판 웹 사이트 </title>
</head>  <!--실질적으로 로그인 사용처리를 하는 페이지--> 
<body> 

<%

String userID=null;
if(session.getAttribute("userID") !=null) { 
	userID=(String) session.getAttribute("userID");
}
if(userID == null) { 
	PrintWriter script = response.getWriter(); 
	script.println("<script>"); 
	script.println("alert('로그인을 하세요.')");
	script.println("location.href='login.jsp'"); //로그인 페이지로 돌려보냄 
	script.println("</script>"); 
	
	//위에 이미 로그인이 된 사람 또 로그인 할 수 없게 만듬
}else {

if (bbs.getBbsTitle()==null || bbs.getBbsContent() ==null) { 
	PrintWriter script = response.getWriter(); 
	script.println("<script>"); 
	script.println("alert('입력이 안된 사항이 있습니다.')");
	script.println("history.back()"); //이전의 페이지로 돌려보냄 
	script.println("</script>"); 
}else { 
	
	BbsDAO bbsDAO = BbsDAO.getInstance(); 
	int result = bbsDAO.write(new Bbs(bbs.getBbsTitle(),bbs.getBbsID(),bbs.getBbsContent()));
	if(result==-1) { 
		PrintWriter script = response.getWriter(); 
		script.println("<script>");   
		script.println("alert('글쓰기에 실패했습니다.')");
		script.println("history.back()"); //이전의 페이지로 돌려보냄 
		script.println("</script>"); 
	}


	else  { 
		PrintWriter script = response.getWriter(); 
		script.println("<script>"); 
		script.println("location.href='bbs.jsp'");
		script.println("</script>"); 
	}
	
	
}
}

%>

</body>
</html>