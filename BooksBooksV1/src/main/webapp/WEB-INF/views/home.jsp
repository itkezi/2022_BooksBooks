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
<title>Insert title here</title>

<style>
.book {
border: 1px solid black;
display: inline-block;
width: 80%;
height:100px;
}
</style>

</head>
<body>
	<H1>Hi~</H1>
	<form:form class="logout" action="${rootPath}/logout">
		<button>로그아웃</button>
	</form:form>
	
	
	<c:forEach items="${BOOKS}" var="BB">
		<a href="${rootPath}/detail/${BB.seq}" class="book" style='background-color: ${BB.b_color}'>
			<c:if test="${BB.b_comp}">
				<div>완독</div>
			</c:if>
			${BB.b_title}
		</a>
	</c:forEach>
	<a href="${rootPath}/insert">INSERT</a>
</body>
</html>