<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath }" var="rootPath" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>SOME LUNCH</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
* {
	box-sizing: border-box;
	margin: 0;
	padding: 0;
}

html {
	width: 100vw;
	height: 100vh;
}

body {
	width: 100%;
	height: 100%;
}

.rows {
	/* 	width: inherit;
	height: inherit; */
	display: flex;
	flex-direction: row;
}

section.main {
	flex: 1;
	overflow: hidden;
}

header {
	padding: 1.2rem;
	text-align: center;
	background-color: rgb(193, 226, 237);
	color: none;
	font-weight: 900;
	background-image: url("${rootPath}/static/image0002.jpg");
	background-repeat: no-repeat;
	background-position: left center;
	background-attachment: fixed;
	background-size: contain;
}

a {
	text-decoration: none;
}

footer {
	background-color: orange;
	color: white;
	text-align: center;
	padding: 1rem;
}
</style>
</head>
<body>
	<div class="rows">
		<header>
			<h1>운암중학교 어떤급식</h1>
		</header>
		<section class="w3-container">
			<div>
				<table class="w3-table-all w3-margin">
					<tr>
						<th>급식일자</th>
						<td>${LUNCH.MLSV_YMD}</td>
					</tr>
					<tr>
						<th>요리명</th>
						<td>${LUNCH.DDISH_NM}</td>
					</tr>
					<tr>
						<th>원산지정보</th>
						<td>${LUNCH.ORPLC_INFO}</td>
					</tr>
					<tr>
						<th>칼로리정보</th>
						<td>${LUNCH.CAL_INFO}</td>
					</tr>
					<tr>
						<th>영양정보</th>
						<td>${LUNCH.NTR_INFO}</td>
					</tr>
				</table>
			</div>
		</section>
	</div>
	<footer class="main">
		<address>CopyRight &copy; https://github.com/geunyang</address>
	</footer>
</body>
</html>