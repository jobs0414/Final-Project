<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" href="css/bootstrap.css">
<title>Insert title here</title>
</head>
<body>

	
	<table class="table table-hover"> 
	 	<form action="reply.do" method="post">
			<input type="hidden" name="bId" value="${reply_view.bId}"> <input
				type="hidden" name="bGroup" value="${reply_view.bGroup}"> <input
				type="hidden" name="bStep" value="${reply_view.bStep}"> <input
				type="hidden" name="bIndent" value="${reply_view.bIndent}">

			<tr>
				<td>��ȣ</td>
				<td>${reply_view.bId}</td>
			</tr>
			<tr>
				<td>��Ʈ</td>
				<td>${reply_view.bHit}</td>
			</tr>
			<tr>
				<td>�̸�</td>
				<td><input type="text" name="bName" value="${reply_view.bName}"></td>
			</tr>
			<tr>
				<td>����</td>
				<td><input type="text" name="bTitle"
					value="${reply_view.bTitle}"></td>
			</tr>
			<tr>
				<td>����</td>
				<td><textarea rows="10" name="bContent">${reply_view.bContent}</textarea></td>
			</tr>
			<tr>
				<a href="list.do">���</a></td>
			</tr>
		</form>
	</table>
	
</body>
</html>