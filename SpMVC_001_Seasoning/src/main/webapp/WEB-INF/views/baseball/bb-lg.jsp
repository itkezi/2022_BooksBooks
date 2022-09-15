<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Season + ing ㅣ baseball-lg</title>
<link rel="stylesheet" href="${rootPath}/static/css/nav.css?ver=2022-06-17-001" />
<link rel="stylesheet" href="${rootPath}/static/css/kbo-box.css?ver=2022-06-17-001" />
<link rel="stylesheet" href="${rootPath}/static/css/area-view.css?ver=2022-06-17-001" />
<link rel="stylesheet" href="${rootPath}/static/css/schedule.css?ver=2022-06-17-001" />
<link rel="stylesheet" href="${rootPath}/static/css/kakao_map.css?ver=2022-06-17-001" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/js/all.min.js"></script>

</head>
<body>
	<header>
		<%@ include file="/WEB-INF/views/nav.jsp" %>
	</header>
	
	<section>
		<article>
			<h1>KBO</h1>
			<div id="kbo-box">
				<div id="korea-map">
					<img src="${rootPath}/static/images/korea-map.png" />
				</div>

				<div id="ticket-book">
					
					<div style="display: none;">
						<p id="st_x">37.51215</p>
						<p id="st_y">127.071976</p>
					</div>
					
					<!-- 경기일정 부분 따로 뺌 -->
					<%@ include file="/WEB-INF/views/baseball/bb-schedule.jsp"%>
				</div>

			</div>
			
			<a href="${rootPath}/baseball/bb-dusan"><div class="map-point dusan">두산 베어스</div></a>
			<a href="${rootPath}/baseball/bb-lg"><div class="map-point lg" style="font-size: 14px; background-color: rgb(0, 24, 65);">LG 트윈스</div></a>
	        <a href="${rootPath}/baseball/bb-samsung"><div class="map-point samsung">삼성 라이온즈</div></a>
	        <a href="${rootPath}/baseball/bb-kiwoom"><div class="map-point kiwoom">키움 히어로즈</div></a>
	        <a href="${rootPath}/baseball/bb-kt"><div class="map-point kt">KT 위즈</div></a>
	        <a href="${rootPath}/baseball/bb-lotte"><div class="map-point lotte">롯데 자이언츠</div></a>
	        <a href="${rootPath}/baseball/bb-ssg"><div class="map-point ssg">SSG 랜더스</div></a>
	        <a href="${rootPath}/baseball/bb-hanwha"><div class="map-point hanwha">한화 이글스</div></a>
	        <a href="${rootPath}/baseball/bb-kia"><div class="map-point kia">kia 타이거즈</div></a>
	        <a href="${rootPath}/baseball/bb-nc"><div class="map-point nc">NC 다이노스</div></a>
	        
		</article>
		<article>
			<h1 id="around-tour-text">주변 관광지</h1>

			<div class="map_wrap">
				<div id="map"></div>
				<div id="menu_wrap" class="bg_white">
					<div class="around-tour-button">
						<form onsubmit="searchPlaces1(); return false;">
							<button id="keyword1" type="submit" value="서울종합운동장 맛집">식당</button>
						</form>
						<form onsubmit="searchPlaces2(); return false;">
							<button type="submit" value="서울종합운동장 숙박" id="keyword2">숙박</button>
						</form>
					</div>
					<hr>
					<ul id="placesList"></ul>
					<div id="pagination"></div>
				</div>

			</div>
		</article>

		<div>
		<!-- 지역별 관광지 부분 -->
	<h4 class="view-title">지역별 관광지</h4>
	<div class="area-view">
		<div class="area-container">
			<div class="area-menu">
				<button class="area-btn seoul_btn clicked"  type="button">서울</button>
				<button class="area-btn incheon_btn" type="button"  
							data-tour_location="2" data-food_location="2" data-lodgment_location="2">인천</button>
							
				<button class="area-btn daejeon_btn" type="button"
							data-tour_location="3" data-food_location="3" data-lodgment_location="3">대전</button>
							
				<button class="area-btn daegu_btn" type="button"
						data-tour_location="4" data-food_location="4" data-lodgment_location="4">대구</button>
				<button class="area-btn gwangju_btn" type="button"
						data-tour_location="5" data-food_location="5" data-lodgment_location="5">광주</button>
				<button class="area-btn busan_btn" type="button"
						data-tour_location="6" data-food_location="6" data-lodgment_location="6">부산</button>
				<button class="area-btn ulsan_btn" type="button"
						data-tour_location="7" data-food_location="7" data-lodgment_location="7">울산</button>
				<button class="area-btn sejong_btn" type="button"
						data-tour_location="8" data-food_location="8" data-lodgment_location="8">세종</button>
				<button class="area-btn gyeonggi_btn" type="button"
						data-tour_location="31" data-food_location="31" data-lodgment_location="31">경기</button>
				<button class="area-btn gangwon_btn" type="button"
						data-tour_location="32" data-food_location="32" data-lodgment_location="32">강원</button>
				<button class="area-btn chungbuk_btn" type="button"
						data-tour_location="33" data-food_location="33" data-lodgment_location="33">충북</button>
				<button class="area-btn chungnam_btn" type="button"
						data-tour_location="34" data-food_location="34" data-lodgment_location="34">충남</button>
				<button class="area-btn gyeongbuk_btn" type="button"
						data-tour_location="35" data-food_location="35" data-lodgment_location="35">경북</button>
				<button class="area-btn gyeongnam_btn" type="button"
						data-tour_location="36" data-food_location="36" data-lodgment_location="36">경남</button>
				<button class="area-btn jeonbuk_btn" type="button"
						data-tour_location="37" data-food_location="37" data-lodgment_location="37">전북</button>
				<button class="area-btn jeonnam_btn" type="button"
						data-tour_location="38" data-food_location="38" data-lodgment_location="38">전남</button>
				<button class="area-btn jeju_btn" type="button"
						data-tour_location="39" data-food_location="39" data-lodgment_location="39">제주</button>
			</div>
		</div>
	</div>
			
		<script src="${rootPath}/static/js/popular_silde.js?ver=2022-06-11-003"></script>
		<link rel="stylesheet" href="${rootPath}/static/css/popular_view.css?ver=2022-06-16-006" />
		<link rel="stylesheet" href="${rootPath}/static/css/area-view.css?ver20220616004" />
		<script>
			const rootPath = "${rootPath}"
		</script>
		
			<div class="popular_view">
			</div>
		</div>

	</section>
	<!--body end-->

	<footer></footer>
</body>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4d06fcc635a4370cc598a2c83e1b6d30&libraries=services,clusterer">
</script>
<script src="${rootPath}/static/js/bb_map.js?ver=2022-06-17-001"></script>
<script src="${rootPath}/static/js/btn.js?var=2022-06-17-001"></script>
<script src="${rootPath}/static/js/popular_button.js?ver=2022-06-17-001"></script>
</html>
