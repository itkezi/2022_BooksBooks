<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<!DOCTYPE html>
<html>
<head>
<title>Season + ing</title>
<link rel="stylesheet" href="${rootPath}/static/css/hj-main.css?ver=220915006" />
<script src="${rootPath}/static/js/hj-main.js?ver=220613-033"></script>
<style>

</style>
</head>
<body>
	<div class="hj-main">
		<a class="hj-a-fb hj-a" href="${rootPath}/football/fb-seoul"> K-리그
			<p>정보보러가기</p>
		</a> <a class="hj-a-bb hj-a" href="${rootPath}/baseball/bb-dusan"> KBO-리그
			<p>정보보러가기</p>
		</a> 
		<a class="hj-a-vb hj-a hj-none" href="#"> V-리그
			<p>정보보러가기</p>
		</a>
		<div class="hj-t-none">현재 배구 시즌이 아닙니다.</div>
		<div  class ="hj-video-etr">
		<video muted autoplay>
			<source src="${rootPath}/static/video/enter.mp4" type="video/mp4" />
		</video>
		</div>
		<video class ="hj-video-fb" muted loop>
			<source src="${rootPath}/static/video/foot002.mp4" type="video/mp4" />
		</video>
		<video class ="hj-video-bb" muted loop>
			<source src="${rootPath}/static/video/base002.mp4" type="video/mp4" />
		</video>
		<video class ="hj-video-vb" muted loop>
			<source src="${rootPath}/static/video/volley002.mp4" type="video/mp4" />
		</video> 
	</div>
</body>
</html>