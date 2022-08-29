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
<title>상세정보</title>
<link rel="stylesheet" href="${rootPath}/static/css/main.css">
</head>
<body>
<%@ include file="/WEB-INF/views/include/nav.jsp"%>
			<c:choose>
			<c:when test="${BB.b_comp}">
				<div class="comp comp_t">완독</div>
			</c:when>
			<c:otherwise>
				<div class="comp comp_f">읽는중</div>			
			</c:otherwise>
			</c:choose>
	<img src="${BOOKS.b_image}">
	<div><h1>${BOOKS.b_title}</h1></div>
	<div><h1>${BOOKS.b_author}</h1></div>
	<div><h1>${BOOKS.b_publisher}</h1></div>
	<div><h1>${BOOKS.b_description}</h1></div>
	<div><h1>${BOOKS.b_comment}</h1></div>
	<div><h1>${BOOKS.b_letter}</h1></div>
	<div><h1>${BOOKS.b_page}</h1></div>
	
	<a href="${rootPath}/update/${BOOKS.seq}" >수정하기</a>
	<a href="${rootPath}/delete/${BOOKS.seq}" >삭제하기</a>
</body>
</html>