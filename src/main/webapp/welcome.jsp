<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&family=Gugi&display=swap" rel="stylesheet">
<title>개발문고</title>
</head>
<body>
	<%@ include file="header.jsp"%>

	<%!String greeting = "개발문고";
	String tagline = "<br>엄선한 최신 서적들을 둘러보세요.<br><br><br><br>";%>

	<div class="jumbotron  bg-warning">
		<!-- bg-primary text-light -->
		<div class="container">
			<h1 class="display-2 text-center" name="title">
				<p><%=greeting%></p>
			</h1>
		</div>
	</div>
	<div class="container">
		<div class="text-center">
			<h4><%=tagline%></h4>
			<%
			response.setIntHeader("Refresh", 10);
			Date day = new java.util.Date();
			String am_pm;
			int hour = day.getHours();
			int min = day.getMinutes();
			int second = day.getSeconds();
			if (hour / 12 == 0) {
				am_pm = "AM";
			} else {
				am_pm = "PM";
				hour = hour - 12;
			}
			String CT = hour + ":" + min + ":" + second + " " + am_pm;
			out.println("현재 접속 시각 : " + CT);
			%>
		</div>
	</div>

	<%@ include file="footer.jsp"%>
</body>
</html>