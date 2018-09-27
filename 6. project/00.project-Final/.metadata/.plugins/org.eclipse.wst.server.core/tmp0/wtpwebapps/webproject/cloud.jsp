<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
[
<c:forEach items="${requestScope.wordShow}" var="data">
	{'text':'${data.text}', 'counting':${data.counting}},
</c:forEach>
	{'text':'-', 'counting':1}
]