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
<title>HOME</title>
<link rel="stylesheet" href="${rootPath}/static/css/main.css">
</head>
<body>
<%@ include file="/WEB-INF/views/include/nav.jsp"%>
	<H1>Hi~</H1>
	<div class="books">
	<c:forEach items="${BOOKS}" var="BB">
		<a href="${rootPath}/detail/${BB.seq}" class="book" 
			style="background-color: ${BB.b_color}; 
			<c:if test="${BB.b_color=='transparent'}">background-image: url('${BB.b_image}')</c:if>">
				<c:choose>
					<c:when test="${BB.b_comp}">
						<div class="comp comp_t"></div>
					</c:when>
					<c:otherwise>
						<div class="comp comp_f"></div>			
					</c:otherwise>
				</c:choose>
			${BB.b_title}
		</a>
	</c:forEach>
	</div>
	<a href="${rootPath}/insert">INSERT</a>
</body>
</html>