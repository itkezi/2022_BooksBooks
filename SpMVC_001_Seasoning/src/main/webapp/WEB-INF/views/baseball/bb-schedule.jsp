<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />

<link rel="stylesheet" href="${rootPath}/static/css/schedule.css?ver=2022-06-14-001" />

<section class="schedule-content">
	<div class="month-container">
		<article class="sch-title">

			<c:forEach items="${ST_DUSAN}" var="DUSAN">
				<p>
					<span>${DUSAN}</span>
				</p>
			</c:forEach>

			<c:forEach items="${ST_LG}" var="LG">
				<p>
					<span>${LG}</span>
				</p>
			</c:forEach>

			<c:forEach items="${ST_KIA}" var="KIA">
				<p>
					<span>${KIA}</span>
				</p>
			</c:forEach>

			<c:forEach items="${ST_SSG}" var="SSG">
				<p>
					<span>${SSG}</span>
				</p>
			</c:forEach>

			<c:forEach items="${ST_KIWOOM}" var="KIWOOM">
				<p>
					<span>${KIWOOM}</span>
				</p>
			</c:forEach>

			<c:forEach items="${ST_KT}" var="KT">
				<p>
					<span>${KT}</span>
				</p>
			</c:forEach>

			<c:forEach items="${ST_HANWHA}" var="HANWHA">
				<p>
					<span>${HANWHA}</span>
				</p>
			</c:forEach>

			<c:forEach items="${ST_SAMSUNG}" var="SAMSUNG">
				<p>
					<span>${SAMSUNG}</span>
				</p>
			</c:forEach>

			<c:forEach items="${ST_NC}" var="NC">
				<p>
					<span>${NC}</span>
				</p>
			</c:forEach>

			<c:forEach items="${ST_LOTTE}" var="LOTTE">
				<p>
					<span>${LOTTE}</span>
				</p>
			</c:forEach>


		</article>

		<c:choose>
			<c:when test="${LAYOUT=='DUSAN_IMG'}">
				<img src="${rootPath}/static/images/dusan_lg.jpg" />
			</c:when>

			<c:when test="${LAYOUT=='LG_IMG'}">
				<img src="${rootPath}/static/images/dusan_lg.jpg" />
			</c:when>

			<c:when test="${LAYOUT=='KIA_IMG'}">
				<img src="${rootPath}/static/images/kia.jpg" />
			</c:when>

			<c:when test="${LAYOUT=='SSG_IMG'}">
				<img src="${rootPath}/static/images/ssg.jpg" />
			</c:when>

			<c:when test="${LAYOUT=='KIWOOM_IMG'}">
				<img src="${rootPath}/static/images/kiwoom.jpg" />
			</c:when>

			<c:when test="${LAYOUT=='KT_IMG'}">
				<img src="${rootPath}/static/images/kt.jpg" />
			</c:when>

			<c:when test="${LAYOUT=='HANWHA_IMG'}">
				<img src="${rootPath}/static/images/hanwha.jpg" />
			</c:when>

			<c:when test="${LAYOUT=='SAMSUNG_IMG'}">
				<img src="${rootPath}/static/images/samsung.jpg" />
			</c:when>

			<c:when test="${LAYOUT=='NC_IMG'}">
				<img src="${rootPath}/static/images/nc.jpg" />
			</c:when>

			<c:when test="${LAYOUT=='LOTTE_IMG'}">
				<img src="${rootPath}/static/images/lotte.jpg" />
			</c:when>
		</c:choose>

		<div class="month-table">
			<article class="table-container">
				<table>
					<tr>
						<th>??????</th>
						<th>?????????</th>
					</tr>
				</table>
				<div class="scroll scroll-style">
					<table>
						<c:forEach items="${BB_DUSAN}" var="DUSAN">
							<tr>
								<td>${DUSAN.st_date}</td>
								<td>?????? &nbsp;:&nbsp; ${DUSAN.st_match}</td>
							</tr>
						</c:forEach>

						<c:forEach items="${BB_LG}" var="LG">
							<tr>
								<td>${LG.st_date}</td>
								<td>lg &nbsp;:&nbsp; ${LG.st_match}</td>
							</tr>
						</c:forEach>

						<c:forEach items="${BB_KIA}" var="KIA">
							<tr>
								<td>${KIA.st_date}</td>
								<td>?????? &nbsp;:&nbsp; ${KIA.st_match}</td>
							</tr>
						</c:forEach>

						<c:forEach items="${BB_SSG}" var="SSG">
							<tr>
								<td>${SSG.st_date}</td>
								<td>ssg &nbsp;:&nbsp; ${SSG.st_match}</td>
							</tr>
						</c:forEach>

						<c:forEach items="${BB_KIWOOM}" var="KIWOOM">
							<tr>
								<td>${KIWOOM.st_date}</td>
								<td>?????? &nbsp;:&nbsp; ${KIWOOM.st_match}</td>
							</tr>
						</c:forEach>

						<c:forEach items="${BB_KT}" var="KT">
							<tr>
								<td>${KT.st_date}</td>
								<td>kt &nbsp;:&nbsp; ${KT.st_match}</td>
							</tr>
						</c:forEach>

						<c:forEach items="${BB_HANWHA}" var="HANWHA">
							<tr>
								<td>${HANWHA.st_date}</td>
								<td>?????? &nbsp;:&nbsp; ${HANWHA.st_match}</td>
							</tr>
						</c:forEach>

						<c:forEach items="${BB_SAMSUNG}" var="SAMSUNG">
							<tr>
								<td>${SAMSUNG.st_date}</td>
								<td>?????? &nbsp;:&nbsp; ${SAMSUNG.st_match}</td>
							</tr>
						</c:forEach>

						<c:forEach items="${BB_NC}" var="NC">
							<tr>
								<td>${NC.st_date}</td>
								<td>nc &nbsp;:&nbsp; ${NC.st_match}</td>
							</tr>
						</c:forEach>

						<c:forEach items="${BB_LOTTE}" var="LOTTE">
							<tr>
								<td>${LOTTE.st_date}</td>
								<td>?????? &nbsp;:&nbsp; ${LOTTE.st_match}</td>
							</tr>
						</c:forEach>

					</table>
				</div>

				<div class="ticket-link-con">
					<c:choose>
						<c:when test="${LAYOUT=='DUSAN_IMG'}">
							<button id="ticket-link" onclick="location.href = 'https://www.doosanbears.com/season/ticket'">?????? ???????????? ??????</button>
						</c:when>

						<c:when test="${LAYOUT=='LG_IMG'}">
							<button id="ticket-link" onclick="location.href = 'https://www.lgtwins.com/service/html.ncd?view=/pc_twins/ticket/ticketinfo'">?????? ???????????? ??????</button>
						</c:when>

						<c:when test="${LAYOUT=='KIA_IMG'}">
							<button id="ticket-link" onclick="location.href = 'https://tigers.co.kr/ticket/reservation'">?????? ???????????? ??????</button>
						</c:when>

						<c:when test="${LAYOUT=='SSG_IMG'}">
							<button id="ticket-link" onclick="location.href = 'http://www.ssglanders.com/game/ticket'">?????? ???????????? ??????</button>
						</c:when>

						<c:when test="${LAYOUT=='KT_IMG'}">
							<button id="ticket-link" onclick="location.href = 'https://www.ktwiz.co.kr/ticket/reservation'">?????? ???????????? ??????</button>
						</c:when>

						<c:when test="${LAYOUT=='HANWHA_IMG'}">
							<button id="ticket-link" onclick="location.href = 'https://www.hanwhaeagles.co.kr/ticketInfo.do'">?????? ???????????? ??????</button>
						</c:when>

						<c:when test="${LAYOUT=='KIWOOM_IMG'}">
							<button id="ticket-link" onclick="location.href = 'https://www.heroesbaseball.co.kr/ticket/normal/viewCharge.do'">?????? ???????????? ??????</button>
						</c:when>

						<c:when test="${LAYOUT=='NC_IMG'}">
							<button id="ticket-link" onclick="location.href = 'https://www.ncdinos.com/auth/ticket.do'">?????? ???????????? ??????</button>
						</c:when>

						<c:when test="${LAYOUT=='SAMSUNG_IMG'}">
							<button id="ticket-link" onclick="location.href = 'https://www.samsunglions.com/score/score_4_7.asp'">?????? ???????????? ??????</button>
						</c:when>

						<c:when test="${LAYOUT=='LOTTE_IMG'}">
							<button id="ticket-link" onclick="location.href = 'http://www.giantsclub.com/html/?pcode=339'">?????? ???????????? ??????</button>
						</c:when>

					</c:choose>
				</div>

			</article>
		</div>
	</div>
</section>