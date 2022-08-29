<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>입력하기</title>
<script>
	const rootPath = "${rootPath}"
</script>
<link rel="stylesheet" href="${rootPath}/static/css/main.css">
<script src="${rootPath}/static/basic.js?ver=2022-08-22-006"></script>

</head>
<body>
<%@ include file="/WEB-INF/views/include/nav.jsp"%>

	<section>
		<form:form method="POST" class="">
			<input class="" name="b_isbn" id="isbn" type="hidden"
				value="${BOOKS.b_isbn}">

			<select name="b_color">
				<option value="red">빨강</option>
				<option value="blue">파랑</option>
				<option value="green">초록</option>
				<option value="yellow">노랑</option>
				<option value="transparent">책표지</option>
			</select>
			<input class="" name="b_image" type="hidden" placeholder="이미지경로"
				value="${BOOKS.b_image}">
			<input class="" name="b_title"
				<c:if test="${LAYOUT == 'UPDATE'}"> readonly="readonly" </c:if>
				id="title" placeholder="책 제목" value="${BOOKS.b_title}">
			<c:if test="${empty BOOKS.b_title}">
				<div>검색</div>
			</c:if>
			<input class="" name="b_author" placeholder="저자"
				value="${BOOKS.b_author}">
			<input class="" name="b_publisher" placeholder="출판사"
				value="${BOOKS.b_publisher}">
			<input class="" name="b_description" placeholder="설명"
				value="${BOOKS.b_description}">
			<input class="" name="b_link" placeholder="판매링크"
				value="${BOOKS.b_link}">
			<input class="" name="b_comment" placeholder="후기"
				value="${BOOKS.b_comment}">
			<input class="" name="b_letter" placeholder="기억에 남는 구절"
				value="${BOOKS.b_letter}">
			<input class="" name="b_price" placeholder="가격"
				value="${BOOKS.b_price}">
			<input class="" name="b_page" placeholder="읽은 페이지"
				value="${BOOKS.b_page}">
			<label><input class="" name="b_comp" type="checkbox"
				value="true">다 읽음</label>
			<button class="book-save" type="button">저장</button>
		</form:form>
	</section>
	<footer>
		<address>CopyRight &copy; itkezi@naver.com</address>
	</footer>
	<div class="modal-result">
		<div class="modal-content">
			<header class=" ">
				<span class="modal-close">&times;</span>
				<h2>도서 검색 정보</h2>
			</header>
			<div class="search-content">
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">

document.querySelector("span.modal-close")?.addEventListener("click",()=> {
	document.querySelector("div.modal-result").style.display='none'	
})
	
</script>


</html>