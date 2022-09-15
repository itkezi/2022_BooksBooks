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
<link rel="stylesheet" href="${rootPath}/static/css/detail.css?ver=00001" />
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
            
            <c:if test="${not empty TOURDETAIL.chkbabycarriage}">
            <tr>
               <th>유모차대여 정보</th>
               <td>${TOURDETAIL.chkbabycarriage}</td>
            </tr>
            </c:if>
            
            <c:if test="${not empty TOURDETAIL.chkpet}">
            <tr>
               <th>애완동물 동반 가능 여부</th>
               <td>${TOURDETAIL.chkpet}</td>
            </tr>
            </c:if>
            
            
            <c:if test="${not empty TOURDETAIL.expagerange}">
               <tr>
                  <th>체험 가능 연령</th>
                  <td>${TOURDETAIL.expagerange}</td>
               </tr>
            </c:if>
            
            <c:if test="${not empty TOURDETAIL.expguide}">            
            <tr>
               <th>체험 안내</th>
               <td>${TOURDETAIL.expguide}</td>
            </tr>
            </c:if>
            
            <c:if test="${not empty TOURDETAIL.infocenter}">   
            <tr>
               <th>문의 및 안내</th>
               <td>${TOURDETAIL.infocenter}</td>
            </tr>
            </c:if>
            
            <c:if test="${not empty TOURDETAIL.parking}">   
            <tr>
               <th>주차시설</th>
               <td>${TOURDETAIL.parking}</td>
            </tr>
            </c:if>
            
            <c:if test="${not empty TOURDETAIL.restdate}">   
            <tr>
               <th>쉬는날</th>
               <td>${TOURDETAIL.restdate}</td>
            </tr>
            </c:if>
            
            <c:if test="${not empty TOURDETAIL.useseason}">   
            <tr>
               <th>이용시기</th>
               <td>${TOURDETAIL.useseason}</td>
            </tr>
            </c:if>
            
            <c:if test="${not empty TOURDETAIL.usetime}">   
            <tr>
               <th>이용시간</th>
               <td>${TOURDETAIL.usetime}</td>
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
               OnClick="location.href ='${rootPath}/detail/tour_detail/${AROUND.contentid}'">
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