<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>

<header >
	<ul>
		<li><a href="${rootPath}/">HOME</a></li>
		<sec:authorize access="isAuthenticated()">
			<form:form class="logout" action="${rootPath}/logout">
				<button>๋ก๊ทธ์์</button>
			</form:form>
			<li><a href="${rootPath}/user/mypage">myPage</a></li>
		</sec:authorize>


	</ul>

</header>