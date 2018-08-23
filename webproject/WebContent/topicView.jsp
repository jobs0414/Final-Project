<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
[
  ["Topic", "Count"],
  <c:forEach items="${requestScope.topicShow}" var="data">
 	 ["${data.topic}", ${data.count}],
  </c:forEach>
  ['test', 0]
]
<% System.out.println(1); %>