<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TravelMaker</title>
    <link rel="shortcut icon" type="image/x-icon" href="image/small_logo.png">
    <link rel="stylesheet" href="${contextPath}/resources/css/main-style.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/Maker/planList.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/ef988defcf.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Sortable/1.14.0/Sortable.min.js" integrity="sha512-zYXldzJsDrNKV+odAwFYiDXV2Cy37cwizT+NkuiPGsa9X1dOz04eHvUWVuxaJ299GvcJT31ug2zO4itXBjFx4w==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    
</head>
<body>
    <main>
        <jsp:include page="/WEB-INF/views/common/header.jsp"/>

        <section id="middle">
            
            <div class="title">내 여행</div>

            <div class="content">
                <div class="planning">
                    <button type="button" id="makePlan" onclick="location.href='${contextPath}/makePlan'">여행 계획하기</button>
                </div>


                <c:forEach var="plan" items="${planList}">
                    <div class="myPlan">
                        <div class="planImg">
                            <img src="${contextPath}/resources/images/Region/jeju/SaebeulOreum.jpg" class="thumbnail">
                        </div>
                        <div class="planProfile">
                            <c:if test="${empty loginMember.profileImage}">
                                <img src="${contextPath}/resources/images/Admin/admin-profile.jpg" class="profile-img">
                            </c:if>

                            <c:if test="${!empty loginMember.profileImage}">
                                <img src="${contextPath}${loginMember.profileImage}" class="profile-img">
                            </c:if>
                        </div>
                        <div class="planTitle">
                            <a href="${contextPath}/makePlan?no=${plan.planNo}">${plan.planTitle}</a>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </section>

        <jsp:include page="/WEB-INF/views/common/footer.jsp"/>

    </main>
</main>
</body>
</html>