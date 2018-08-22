<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>3D Accordion with CSS3</title>
		<style>
			body {
				background: #fff;
				font-family: Arial, Helvetica, sans-serif;
			}
			h1, h2, h3, h4, h5, h6 {
				font-family: Georgia, serif;
			}
			h1{
				font-size:330%;
				text-shadow:2px 2px 1px white;
			}
			p {
				line-height: 140%;
				font-size: 90%;
			}
			#accordion {
				margin: 100px;
			}
			#accordion article {
				-webkit-transform: perspective(900px) rotateY(60deg);
				-webkit-transition: all 0.7s ease-in-out;
				background: #D5DED9;
				border: 1px solid #f3f3f3;
				box-shadow: 0px 5px 15px gray;
				float: left;
				height: 500px;
				margin-left: -180px;
				padding: 20px;
				width: 220px;
			}
			#accordion article:first-child {
				margin-left: 0px;
			}
			#accordion article img {
				float: left;
				padding: 0 10px 5px 0;
			}
			#accordion article:hover {
				-webkit-transform: perspective(0) rotateY(-10deg);
				margin: 0 140px 0 -60px;
			}
		</style>
	</head>
	<body>
		<h1>Top10 Speakers(Technology_Science)</h1>
		<div id="accordion">
		<c:forEach items="${requestScope.infoShow}" var="data" varStatus="i">
			<article>
				<h2>Top ${i.count}</h2>
				<img src="img/Technology_ScienceTop10/${data.photo}.png" width="100" height="75">
				<ol type="1">
					<br><br><br><br><br>
					<li>이름 : </li>
						<ul type="disc">${data.speaker_name}</ul>
					<li>직업 : </li>
						<ul type="disc">${data.speaker_occupation}</ul>
					<li>TED 제목 : </li>
						<ul type="disc">${data.title}</ul>
					<li>조회수 : </li>
						<ul type="disc">${data.views}</ul>
						<br>
					<li>TED 영상 링크 : </li>
						<ul type="disc"><a href="${data.url}">${data.url}</a></ul>
						<br>
					<li>강연자 정보 더보기 : </li>
						<ul type="disc"><a href="${data.web_site}">${data.web_site}</a></ul>
				</ol>
			</article>
		</c:forEach>	
		</div>
</html>