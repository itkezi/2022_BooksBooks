<%@ page language="java" contentType="text/html;charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Insert title here</title>
<link rel="stylesheet" href="${rootPath}/static/css/nav.css" />
<link rel="stylesheet" href="${rootPath}/static/css/detail.css" />
<link rel="stylesheet"
   href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />
<script>
   const rootPath = "${rootPath}"
</script>
<script
   src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/js/all.min.js"></script>
<script src="${rootPath}/static/js/detail.js?ver220616-003"></script>

<style>
</style>
</head>
<body>
   <%@ include file="/WEB-INF/views/nav.jsp"%>

   <section>
      <div class="hj-detail-titlebox">
         <a onclick="history.back()">&lt; 이전으로</a>
         <h1>${COMMONDETAIL.title}</h1>
         <div></div>
      </div>
      <div class="hj-detail-main">
         <img class="hj-detail-mainpic" src="${COMMONDETAIL.firstimage}"  onerror="this.src='${rootPath}/static/images/image-error.png'">
         <table>
            <tr>
               <th>주소</th>
               <td>${COMMONDETAIL.addr1}</td>
            </tr>
            <tr>
               <th>전화번호</th>
            <c:choose>
            <c:when test="${empty COMMONDETAIL.tel}">
               <td> 제공된 전화번호가 없습니다. </td>
            </c:when>
            <c:when test="${not empty COMMONDETAIL.tel}">
               <td>${COMMONDETAIL.tel}</td>
            </c:when>
            </c:choose>
            </tr>
            <tr>
               <th>홈페이지주소</th>
               <td>${COMMONDETAIL.homepage}</td>
            </tr>
            
            <c:if test="${not empty LODGEDETAIL.accomcountlodging}">
            <tr>
               <th>수용 가능인원</th>
               <td>${LODGEDETAIL.accomcountlodging}</td>
            </tr>
            </c:if>
            
            <c:if test="${not empty LODGEDETAIL.checkintime}">
            <tr>
               <th>입실 시간</th>
               <td>${LODGEDETAIL.checkintime}</td>
            </tr>
            </c:if>
            
            
            <c:if test="${not empty LODGEDETAIL.checkouttime}">
               <tr>
                  <th>퇴실 시간</th>
                  <td>${LODGEDETAIL.checkouttime}</td>
               </tr>
            </c:if>
            
            <c:if test="${not empty LODGEDETAIL.chkcooking}">            
            <tr>
               <th>객실내 취사 여부</th>
               <td>${LODGEDETAIL.chkcooking}</td>
            </tr>
            </c:if>
            
            <c:if test="${not empty LODGEDETAIL.foodplace}">   
            <tr>
               <th>식음료장</th>
               <td>${LODGEDETAIL.foodplace}</td>
            </tr>
            </c:if>
            
            <c:if test="${not empty LODGEDETAIL.infocenterlodging}">   
            <tr>
               <th>문의 및 안내</th>
               <td>${LODGEDETAIL.infocenterlodging}</td>
            </tr>
            </c:if>
            
            <c:if test="${not empty LODGEDETAIL.parkinglodging}">   
            <tr>
               <th>주차시설</th>
               <td>${LODGEDETAIL.parkinglodging}</td>
            </tr>
            </c:if>
            
            <c:if test="${not empty LODGEDETAIL.pickup}">   
            <tr>
               <th>픽업 서비스</th>
               <td>${LODGEDETAIL.pickup}</td>
            </tr>
            </c:if>
            
            <c:if test="${not empty LODGEDETAIL.reservationlodging}">   
            <tr>
               <th>예약안내</th>
               <td>${LODGEDETAIL.reservationlodging}</td>
            </tr>
            </c:if>
            
            <c:if test="${not empty LODGEDETAIL.reservationurl}">   
            <tr>
               <th>예약안내 홈페이지</th>
               <td>${LODGEDETAIL.reservationurl}</td>
            </tr>
            </c:if>
            
            <c:if test="${not empty LODGEDETAIL.roomtype}">   
            <tr>
               <th>객실유형</th>
               <td>${LODGEDETAIL.roomtype}</td>
            </tr>
            </c:if>
            
            <c:if test="${not empty LODGEDETAIL.scalelodging}">   
            <tr>
               <th>규모</th>
               <td>${LODGEDETAIL.scalelodging}</td>
            </tr>
            </c:if>
            
            <c:if test="${not empty LODGEDETAIL.subfacility}">   
            <tr>
               <th>부대시설 (기타)</th>
               <td>${LODGEDETAIL.subfacility}</td>
            </tr>
            </c:if>
            
            <c:if test="${not empty LODGEDETAIL.barbecue}">   
            <tr>
               <th>바비큐장 여부</th>
               <td>${LODGEDETAIL.barbecue}</td>
            </tr>
            </c:if>
            
            <c:if test="${not empty LODGEDETAIL.refundregulation}">   
            <tr>
               <th>환불규정</th>
               <td>${LODGEDETAIL.refundregulation}</td>
            </tr>
            </c:if>
            
            <tr>
               <td colspan='2'>${COMMONDETAIL.overview}</td>
            </tr>

         </table>

         <div></div>
      </div>
      <div class="hj-detail-other">
			<c:forEach items="${AROUND}" begin="0" end="5" var="AROUND">
			<c:if test="${AROUND.title != COMMONDETAIL.title}">
            <div class='hj-detail-otherbox'
               OnClick="location.href ='${rootPath}/detail/lodge_detail/${AROUND.contentid}'">
               <div class="hj-detail-foreach" data-isbn="${AROUND.contentid}">
                  <h3>이곳에서 <div class="hj-dis">${AROUND.dist}</div>m</h3>
                  <img src="${AROUND.firstimage2}"  onerror="this.src='${rootPath}/static/images/image-error.png'">
                  <div class="hj-detail-othercontent">
                     <h4>${AROUND.title}</h4>
                     <p class="hj-other-addr">${AROUND.addr1}</p>
                     <div class="hj-detail-detail">자세히보기</div>
                  </div>
               </div>
            </div>
            </c:if>
         </c:forEach>
      </div>
   </section>

</body>
</html>