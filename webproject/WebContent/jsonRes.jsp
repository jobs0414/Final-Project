<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
[
['topic','real_no'],
<c:forEach items="${requestScope.data}" var="data">
	["${data.topic}", ${data.real_no}],
</c:forEach>
]