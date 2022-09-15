<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />

<script src="${rootPath}/static/js/popular_silde.js?ver=2022-06-11-003"></script>

<style>
.seoul {
	display: flex;
	flex-direction: column;
	position: absolute;
	background-color: white;
	z-index: 1;
}

.incheon {
	display: flex;
	flex-direction: column;
	position: absolute;
	background-color: white;
	z-index: 0;
}

.daejeon {
	display: flex;
	flex-direction: column;
	position: absolute;
	background-color: white;
	z-index: 0;
}

.daegu {
	display: flex;
	flex-direction: column;
	position: absolute;
	background-color: white;
	z-index: 0;
}

.gwangju {
	display: flex;
	flex-direction: column;
	position: absolute;
	background-color: white;
	z-index: 0;
}

.busan {
	display: flex;
	flex-direction: column;
	position: absolute;
	background-color: white;
	z-index: 0;
}

.ulsan {
	display: flex;
	flex-direction: column;
	position: absolute;
	background-color: white;
	z-index: 0;
}

.sejong {
	display: flex;
	flex-direction: column;
	position: absolute;
	background-color: white;
	z-index: 0;
}

.gyeonggi {
	display: flex;
	flex-direction: column;
	position: absolute;
	background-color: white;
	z-index: 0;
}

.gangwon {
	display: flex;
	flex-direction: column;
	position: absolute;
	background-color: white;
	z-index: 0;
}

.chungbuk {
	display: flex;
	flex-direction: column;
	position: absolute;
	background-color: white;
	z-index: 0;
}

.chungnam {
	display: flex;
	flex-direction: column;
	position: absolute;
	background-color: white;
	z-index: 0;
}

.gyeongbuk {
	display: flex;
	flex-direction: column;
	position: absolute;
	background-color: white;
	z-index: 0;
}

.gyeongnam {
	display: flex;
	flex-direction: column;
	position: absolute;
	background-color: white;
	z-index: 0;
}

.jeonbuk {
	display: flex;
	flex-direction: column;
	position: absolute;
	background-color: white;
	z-index: 0;
}

.jeonnam {
	display: flex;
	flex-direction: column;
	position: absolute;
	background-color: white;
	z-index: 0;
}

.jeju {
	display: flex;
	flex-direction: column;
	position: absolute;
	background-color: white;
	z-index: 0;
}
</style>

<div class="popular_view">

	<!-- 지역별 관광지 부분 -->
	<h4 class="view-title">지역별 관광지</h4>
	<div class="area-view">
		<div class="area-container">
			<ul class="area-menu">
				<li><a class="seoul_btn">서울</a></li>
				<li><a class="incheon_btn">인천</a></li>
				<li><a class="daejeon_btn">대전</a></li>
				<li><a class="daegu_btn">대구</a></li>
				<li><a class="gwangju_btn">광주</a></li>
				<li><a class="busan_btn">부산</a></li>
				<li><a class="ulsan_btn">울산</a></li>
				<li><a class="sejong_btn">세종</a></li>
				<li><a class="gyeonggi_btn">경기</a></li>
				<li><a class="gangwon_btn">강원</a></li>
				<li><a class="chungbuk_btn">충북</a></li>
				<li><a class="chungnam_btn">충남</a></li>
				<li><a class="gyeongbuk_btn">경북</a></li>
				<li><a class="gyeongnam_btn">경남</a></li>
				<li><a class="jeonbuk_btn">전북</a></li>
				<li><a class="jeonnam_btn">전남</a></li>
				<li><a class="jeju_btn">제주</a></li>
			</ul>
		</div>
	</div>

	<h4 class="attraction">명소 관광지</h4>

	<!-- --------------------------------------------------------------------------------------------------------------------------------------- -->

	<div class="container-view seoul">
		<div class="attraction-view">

			<div class="out">
				<div class="window">
					<div class="slides">

						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- --------------------------------------------------------------------------------------------------------------------------------------- -->
	<div class="container-view incheon">
		<div class="attraction-view">

			<div class="out">
				<div class="window">
					<div class="slides">

						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[abc명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- --------------------------------------------------------------------------------------------------------------------------------------- -->

	<div class="container-view daejeon">
		<div class="attraction-view">

			<div class="out">
				<div class="window">
					<div class="slides">

						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[bbc명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- --------------------------------------------------------------------------------------------------------------------------------------- -->

	<div class="container-view daegu">
		<div class="attraction-view">

			<div class="out">
				<div class="window">
					<div class="slides">

						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- --------------------------------------------------------------------------------------------------------------------------------------- -->
	<div class="container-view gwangju">
		<div class="attraction-view">

			<div class="out">
				<div class="window">
					<div class="slides">

						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[abc명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- --------------------------------------------------------------------------------------------------------------------------------------- -->

	<div class="container-view busan">
		<div class="attraction-view">

			<div class="out">
				<div class="window">
					<div class="slides">

						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[bbc명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- --------------------------------------------------------------------------------------------------------------------------------------- -->

	<div class="container-view ulsan">
		<div class="attraction-view">

			<div class="out">
				<div class="window">
					<div class="slides">

						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- --------------------------------------------------------------------------------------------------------------------------------------- -->
	<div class="container-view sejong">
		<div class="attraction-view">

			<div class="out">
				<div class="window">
					<div class="slides">

						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[abc명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- --------------------------------------------------------------------------------------------------------------------------------------- -->

	<div class="container-view gyeonggi">
		<div class="attraction-view">

			<div class="out">
				<div class="window">
					<div class="slides">

						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[bbc명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- --------------------------------------------------------------------------------------------------------------------------------------- -->

	<div class="container-view gangwon">
		<div class="attraction-view">

			<div class="out">
				<div class="window">
					<div class="slides">

						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- --------------------------------------------------------------------------------------------------------------------------------------- -->
	<div class="container-view chungbuk">
		<div class="attraction-view">

			<div class="out">
				<div class="window">
					<div class="slides">

						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[abc명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- --------------------------------------------------------------------------------------------------------------------------------------- -->

	<div class="container-view chungnam">
		<div class="attraction-view">

			<div class="out">
				<div class="window">
					<div class="slides">

						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[bbc명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- --------------------------------------------------------------------------------------------------------------------------------------- -->

	<div class="container-view gyeongbuk">
		<div class="attraction-view">

			<div class="out">
				<div class="window">
					<div class="slides">

						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- --------------------------------------------------------------------------------------------------------------------------------------- -->
	<div class="container-view gyeongnam">
		<div class="attraction-view">

			<div class="out">
				<div class="window">
					<div class="slides">

						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[abc명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- --------------------------------------------------------------------------------------------------------------------------------------- -->

	<div class="container-view jeonbuk">
		<div class="attraction-view">

			<div class="out">
				<div class="window">
					<div class="slides">

						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[bbc명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- --------------------------------------------------------------------------------------------------------------------------------------- -->

	<div class="container-view jeonnam">
		<div class="attraction-view">

			<div class="out">
				<div class="window">
					<div class="slides">

						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[bbc명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- --------------------------------------------------------------------------------------------------------------------------------------- -->

	<div class="container-view jeju">
		<div class="attraction-view">

			<div class="out">
				<div class="window">
					<div class="slides">

						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[bbc명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>
						<div class="slide">
							<div class="attr-container">
								<span class="img"> <img src="" />
								</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- --------------------------------------------------------------------------------------------------------------------------------------- -->

	<div class="btn-box">
		<button class="btn prev">&#10094;</button>
		<button class="btn next">&#10095;</button>
	</div>

</div>

<script src="${rootPath}/static/js/popular_button.js?ver=2022-06-15-021"></script>