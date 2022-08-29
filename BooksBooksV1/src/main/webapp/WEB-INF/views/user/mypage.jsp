<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>마이페이지</title>
<link rel="stylesheet" href="${rootPath}/static/css/main.css">
</head>
<body>
<%@ include file="/WEB-INF/views/include/nav.jsp"%>
	<H1>${USER.username}의 마이페이지</H1>
	
	<table>
		<tr>
			<th>아이디</th>
			<td>${USER.username}</td>
		</tr>
		<tr>
			<th>이메일</th>
			<td>${USER.email}</td>
		</tr>
		<tr>
			<th>연락처</th>
			<td>${USER.tel}</td>
		</tr>
		<tr>
			<th>실명</th>
			<td>${USER.realname}</td>
		</tr>
		<tr>
			<th>닉네임</th>
			<td>${USER.nickname}</td>
		</tr>
	</table>
</body>
</html>