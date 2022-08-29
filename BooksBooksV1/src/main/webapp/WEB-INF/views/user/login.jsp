<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>로그인</title>
<link rel="stylesheet" href="${rootPath}/static/css/main.css">

</head>
<body>
	<h1 class="login-h1">북스북스</h1>
	<div class="login-form">
		<h1>로그인</h1>
		<form:form class="login" action="${rootPath}/user/login">
			<c:if test="${error == 'LOGIN_NEED'}">
				<div>* 로그인이 필요합니다</div>
			</c:if>
			<input name="username" placeholder="아이디">
			<input name="password" type="password" placeholder="비밀번호">
			<a class="join-btn" href="${rootPath}/user/join">회원가입</a>
			<button class="login-btn">로그인</button>
		</form:form>
		<img class="hj-i" src="${rootPath}/static/images/login${RANDOM}.jpg">
	</div>
</body>
</html>