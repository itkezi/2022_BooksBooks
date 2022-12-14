<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />

<link rel="stylesheet" href="${rootPath}/static/css/schedule.css?ver=2022-06-13-002" />

<section class="schedule-content">
	<div class="month-container">
		<article class="sch-title">
			<c:forEach items="${ST_SEOUL}" var="SEOUL">
				<p>
					<span>${SEOUL}</span>
				</p>
			</c:forEach>

			<c:forEach items="${ST_JEONBUK}" var="JEONBUK">
				<p>
					<span>${JEONBUK}</span>
				</p>
			</c:forEach>

			<c:forEach items="${ST_GANGWON1}" var="GANGWON1">
				<p>
					<span>${GANGWON1}</span>
				</p>
			</c:forEach>

			<c:forEach items="${ST_GANGWON2}" var="GANGWON2">
				<p>
					<span>${GANGWON2}</span>
				</p>
			</c:forEach>

			<c:forEach items="${ST_INCHEON}" var="INCHEON">
				<p>
					<span>${INCHEON}</span>
				</p>
			</c:forEach>

			<c:forEach items="${ST_SEONGNAM}" var="SEONGNAM">
				<p>
					<span>${SEONGNAM}</span>
				</p>
			</c:forEach>

			<c:forEach items="${ST_SUWON_SS}" var="SUWON_SS">
				<p>
					<span>${SUWON_SS}</span>
				</p>
			</c:forEach>

			<c:forEach items="${ST_SUWON}" var="SUWON">
				<p>
					<span>${SUWON}</span>
				</p>
			</c:forEach>

			<c:forEach items="${ST_GIMCHEON}" var="GIMCHEON">
				<p>
					<span>${GIMCHEON}</span>
				</p>
			</c:forEach>

			<c:forEach items="${ST_DAEGU}" var="DAEGU">
				<p>
					<span>${DAEGU}</span>
				</p>
			</c:forEach>

			<c:forEach items="${ST_POHANG}" var="POHANG">
				<p>
					<span>${POHANG}</span>
				</p>
			</c:forEach>

			<c:forEach items="${ST_ULSAN}" var="ULSAN">
				<p>
					<span>${ULSAN}</span>
				</p>
			</c:forEach>

			<c:forEach items="${ST_JEJU}" var="JEJU">
				<p>
					<span>${JEJU}</span>
				</p>
			</c:forEach>
		</article>

		<c:choose>
			<c:when test="${LAYOUT=='SEOUL_IMG'}">
				<img src="${rootPath}/static/images/seoul.jpg" />
			</c:when>

			<c:when test="${LAYOUT=='JEONBUK_IMG'}">
				<img src="${rootPath}/static/images/jeonbuk.jpg" />
			</c:when>

			<c:when test="${LAYOUT=='GANGWON1_IMG'}">
				<img src="${rootPath}/static/images/gangwon1.jpg" />
			</c:when>

			<c:when test="${LAYOUT=='GANGWON2_IMG'}">
				<img src="${rootPath}/static/images/gangwon2.jpg" />
			</c:when>

			<c:when test="${LAYOUT=='INCHEON_IMG'}">
				<img src="${rootPath}/static/images/incheon.jpg" />
			</c:when>

			<c:when test="${LAYOUT=='SEONGNAM_IMG'}">
				<img src="${rootPath}/static/images/seongnam.jpg" />
			</c:when>

			<c:when test="${LAYOUT=='SUWON_SS_IMG'}">
				<img src="${rootPath}/static/images/suwon_ss.jpg" />
			</c:when>

			<c:when test="${LAYOUT=='SUWON_IMG'}">
				<img src="${rootPath}/static/images/suwon.jpg" />
			</c:when>

			<c:when test="${LAYOUT=='GIMCHEON_IMG'}">
				<img src="${rootPath}/static/images/gimcheon.jpg" />
			</c:when>

			<c:when test="${LAYOUT=='DAEGU_IMG'}">
				<img src="${rootPath}/static/images/daegu.jpg" />
			</c:when>

			<c:when test="${LAYOUT=='POHANG_IMG'}">
				<img src="${rootPath}/static/images/pohang.jpg" />
			</c:when>

			<c:when test="${LAYOUT=='ULSAN_IMG'}">
				<img src="${rootPath}/static/images/ulsan.jpg" />
			</c:when>

			<c:when test="${LAYOUT=='JEJU_IMG'}">
				<img src="${rootPath}/static/images/jeju.jpg" />
			</c:when>
		</c:choose>

		<div class="month-table">
			<article class="table-container">
				<table>
					<tr>
						<th>??????</th>
						<th>??????</th>
						<th>?????????</th>
					</tr>
				</table>
				<div class="scroll scroll-style">
					<table>
						<c:forEach items="${FB_SEOUL}" var="SEOUL">
							<tr>
								<td colspan="3">${SEOUL.fb_st_date}</td>
							</tr>
						</c:forEach>

						<c:forEach items="${FB_JEONBUK}" var="JEONBUK">
							<tr>
								<td colspan="3">${JEONBUK.fb_st_date}</td>
							</tr>
						</c:forEach>

						<c:forEach items="${FB_GANGWON1}" var="GANGWON1">
							<tr>
								<td>${GANGWON1.fb_st_date}</td>
								<td>${GANGWON1.fb_st_time}</td>
								<td>?????? &nbsp;:&nbsp; ${GANGWON1.fb_st_match}</td>
							</tr>
						</c:forEach>

						<c:forEach items="${FB_GANGWON2}" var="GANGWON2">
							<tr>
								<td colspan="3">${GANGWON2.fb_st_date}</td>
							</tr>
						</c:forEach>

						<c:forEach items="${FB_INCHEON}" var="INCHEON">
							<tr>
								<td colspan="3">${INCHEON.fb_st_date}</td>
							</tr>
						</c:forEach>

						<c:forEach items="${FB_SEONGNAM}" var="SEONGNAM">
							<tr>
								<td>${SEONGNAM.fb_st_date}</td>
								<td>${SEONGNAM.fb_st_time}</td>
								<td>?????? &nbsp;:&nbsp; ${SEONGNAM.fb_st_match}</td>
							</tr>
						</c:forEach>

						<c:forEach items="${FB_SUWON_SS}" var="SUWON_SS">
							<tr>
								<td>${SUWON_SS.fb_st_date}</td>
								<td>${SUWON_SS.fb_st_time}</td>
								<td>?????? ?????? &nbsp;:&nbsp; ${SUWON_SS.fb_st_match}</td>
							</tr>
						</c:forEach>

						<c:forEach items="${FB_SUWON}" var="SUWON">
							<tr>
								<td colspan="3">${SUWON.fb_st_date}</td>
							</tr>
						</c:forEach>
						<c:forEach items="${FB_GIMCHEON}" var="GIMCHEON">
							<tr>
								<td>${GIMCHEON.fb_st_date}</td>
								<td>${GIMCHEON.fb_st_time}</td>
								<td>?????? &nbsp;:&nbsp; ${GIMCHEON.fb_st_match}</td>
							</tr>
						</c:forEach>

						<c:forEach items="${FB_DAEGU}" var="DAEGU">
							<tr>
								<td>${DAEGU.fb_st_date}</td>
								<td>${DAEGU.fb_st_time}</td>
								<td>?????? &nbsp;:&nbsp; ${DAEGU.fb_st_match}</td>
							</tr>
						</c:forEach>

						<c:forEach items="${FB_POHANG}" var="POHANG">
							<tr>
								<td colspan="3">${POHANG.fb_st_date}</td>
							</tr>
						</c:forEach>

						<c:forEach items="${FB_ULSAN}" var="ULSAN">
							<tr>
								<td>${ULSAN.fb_st_date}</td>
								<td>${ULSAN.fb_st_time}</td>
								<td>?????? &nbsp;:&nbsp; ${ULSAN.fb_st_match}</td>
							</tr>
						</c:forEach>

						<c:forEach items="${FB_JEJU}" var="JEJU">
							<tr>
								<td colspan="3">${JEJU.fb_st_date}</td>
							</tr>
						</c:forEach>
					</table>
				</div>

				<div class="ticket-link-con">
					<c:choose>
						<c:when test="${LAYOUT=='SEOUL_IMG'}">
							<button id="ticket-link" onclick="location.href = 'https://www.fcseoul.com/tickets/reserveSingleTicket'">?????? ???????????? ??????</button>
						</c:when>

						<c:when test="${LAYOUT=='JEONBUK_IMG'}">
							<button id="ticket-link" onclick="location.href = 'https://www.hyundai-motorsfc.com/ticket/ticket.asp'">?????? ???????????? ??????</button>
						</c:when>

						<c:when test="${LAYOUT=='GANGWON1_IMG'}">
							<button id="ticket-link" onclick="location.href = 'https://gangwon-fc.com/match/stadium_songam'">?????? ???????????? ??????</button>
						</c:when>

						<c:when test="${LAYOUT=='GANGWON2_IMG'}">
							<button id="ticket-link" onclick="location.href = 'https://gangwon-fc.com/match/stadium_gangneung'">?????? ???????????? ??????</button>
						</c:when>

						<c:when test="${LAYOUT=='INCHEON_IMG'}">
							<button id="ticket-link" onclick="location.href = 'https://www.incheonutd.com/ticket/ticket_intro.php'">?????? ???????????? ??????</button>
						</c:when>

						<c:when test="${LAYOUT=='SEONGNAM_IMG'}">
							<button id="ticket-link" onclick="location.href = 'https://www.seongnamfc.com/fan/ticket'">?????? ???????????? ??????</button>
						</c:when>

						<c:when test="${LAYOUT=='SUWON_SS_IMG'}">
							<button id="ticket-link" onclick="location.href = 'https://ticket.interpark.com/Contents/Sports/GoodsInfo?SportsCode=07002&TeamCode=PS003'">?????? ???????????? ??????</button>
						</c:when>

						<c:when test="${LAYOUT=='SUWON_IMG'}">
							<button id="ticket-link" onclick="location.href = 'https://suwonfc.com/?p=19'">?????? ???????????? ??????</button>
						</c:when>

						<c:when test="${LAYOUT=='GIMCHEON_IMG'}">
							<button id="ticket-link" onclick="location.href = 'http://gimcheonfc.com/doc/ticket1.php'">?????? ???????????? ??????</button>
						</c:when>

						<c:when test="${LAYOUT=='DAEGU_IMG'}">
							<button id="ticket-link" onclick="location.href = 'https://www.daegufc.co.kr/match/ticket.php'">?????? ???????????? ??????</button>
						</c:when>

						<c:when test="${LAYOUT=='POHANG_IMG'}">
							<button id="ticket-link" onclick="location.href = 'https://www.steelers.co.kr/match/ticket'">?????? ???????????? ??????</button>
						</c:when>

						<c:when test="${LAYOUT=='ULSAN_IMG'}">
							<button id="ticket-link" onclick="location.href = 'https://www.uhfc.tv/apply/ticket.php'">?????? ???????????? ??????</button>
						</c:when>

						<c:when test="${LAYOUT=='JEJU_IMG'}">
							<button id="ticket-link" onclick="location.href = 'https://www.jeju-utd.com/match/ticket.asp'">?????? ???????????? ??????</button>
						</c:when>
					</c:choose>
				</div>

			</article>
		</div>
	</div>
</section>