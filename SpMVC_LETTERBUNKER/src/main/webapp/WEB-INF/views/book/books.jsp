<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Insert title here</title>
</head>
<body>

	<header>
		<h1>도서정보관리</h1>
	</header>
	<section>
		<form method="POST" action="${rootPath}/naver/books">
			<div>
				<input name="isbn" id="isbn" placeholder="ISBN"> <input
					name="title" id="title" placeholder="도서명 입력 후 Enter">
			</div>
			<div>
				<input name="author" placeholder="저자"> <input
					name="publicher" placeholder="출판사"> <input name="pubdate"
					placeholder="출판일"> <input name="price" type="number">
			</div>
			<div>
				<input name="link" placeholder="자세히보기" /> <input name="image"
					placeholder="이미지경로" />
			</div>
			<textarea rows="10"></textarea>
			<button type="button">저장</button>
		</form>
	</section>
	<footer>
		<address>CopyRight &copy; itkezi@naver.com</address>
	</footer>
	<section class="modal" id="modal_box"></section>
</body>
</html>