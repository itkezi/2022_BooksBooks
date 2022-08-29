<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />

<script>
	const rootPath = "${rootPath}"
</script>
<link rel="stylesheet" href="${rootPath}/static/css/main.css">
<script src="${rootPath}/static/basic.js?ver=2022-08-22-001"></script>
<section class="modal-content">
	<article class="">
		<table class="">
			<colgroup>
				<col width="300px">
				<col width="100px">
				<col width="100px">
			</colgroup>
			<thead>
				<tr>
					<th>도서명</th>
					<th>출판사</th>
					<th>저자</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${BOOKS}" var="BOOK">
					<tr data-isbn="${BOOK.isbn}">
						<td>${BOOK.title}</td>
						<td>${BOOK.publisher}</td>
						<td>${BOOK.author}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</article>
</section>