<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=be01097258cdbbe3042dc5464adc574e&libraries=services,clusterer">
	
</script>

<div class="map_wrap">
	<div id="map"></div>
	<div id="menu_wrap" class="bg_white">
		<div class="around-tour-button">
			<form onsubmit="searchPlaces1(); return false;">
				<button id="keyword1" type="submit" value="서울월드컵경기장 맛집">식당</button>
			</form>
			<form onsubmit="searchPlaces2(); return false;">
				<button type="submit" value="서울월드컵경기장 숙박" id="keyword2">숙박</button>
			</form>
		</div>
		<hr>
		<ul id="placesList"></ul>
		<div id="pagination"></div>
	</div>

</div>

