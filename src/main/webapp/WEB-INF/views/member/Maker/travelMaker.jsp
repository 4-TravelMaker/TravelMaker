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
    <link rel="stylesheet" href="${contextPath}/resources/css/Maker/travelMaker.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/ef988defcf.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Sortable/1.14.0/Sortable.min.js" integrity="sha512-zYXldzJsDrNKV+odAwFYiDXV2Cy37cwizT+NkuiPGsa9X1dOz04eHvUWVuxaJ299GvcJT31ug2zO4itXBjFx4w==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    
</head>
<body>
    <main>
        <jsp:include page="/WEB-INF/views/common/header.jsp"/>
    </main>

        <section id="middle">
            
            <div id="left">
                <form action="makePlan" method="POST" onsubmit="return savePlan()">

                    <div id="title-box">
                        <div class="profile-box">
                            <div class="member-box">

                                <c:if test="${empty loginMember.profileImage}">
                                    <img src="${contextPath}/resources/images/Admin/admin-profile.jpg" class="profile">
                                </c:if>

                                <c:if test="${!empty loginMember.profileImage}">
                                    <img src="${contextPath}${loginMember.profileImage}" class="profile">
                                </c:if>

                                <span class="nickname-span">${loginMember.memberNickname}</span>
                            </div>
                            <div class="pmBtn-box">
                                <c:if test="${empty plan}">
                                    <button type="button" id="minus" class="pmBtn">-</button> <span id="date">0박&nbsp;1일</span> <button type="button" id="plus" class="pmBtn">+</button>
                                    <input type="hidden" id="date-value" name="dateValue" value="1">
                                </c:if>

                                <c:if test="${!empty plan}">
                                    <button type="button" id="minus" class="pmBtn">-</button> <span id="date">${plan.dateLevel - 1}박&nbsp;${plan.dateLevel}일</span> <button type="button" id="plus" class="pmBtn">+</button>
                                    <input type="hidden" id="date-value" name="dateValue" value="${plan.dateLevel}">
                                </c:if>
                            </div>
                        </div>
                        <div>
                            <strong>여행 이름</strong><input type="text" id="input-title" name="inputTitle" placeholder="제목을 입력하세요." value="${plan.planTitle}">
                        </div>
                    </div>

                    <div class="column">
                        
                        <c:if test="${empty plan}">
                            <h1 class="h1-1">1일차</h1>
                        </c:if>

                        <c:if test="${!empty plan}">
                            ${plan.planContent}
                        </c:if>

                    </div>

                    <input type="hidden" name="thumbnail" id="thumbnail">
                    <input type="hidden" name="columnContent" id="columnContent">
                    <input type="hidden" name="mode" value="${param.mode}">
                    <input type="hidden" name="no" value="${param.no}">

                    <div class="save-btn-area">
                        <button class="button-style" id="save-btn">저장</button>
                        <button type="button" class="button-style" id="reset-btn">초기화</button>
                    </div>
                </form>
            </div>

            <div id="right">

                <div class="map_wrap">
                    <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>
                
                    <div id="menu_wrap" class="bg_white">
                        <div class="option">
                            <div>
                                <form onsubmit="searchPlaces(); return false;">
                                    키워드 : <input type="text" value="아쿠아플라넷" id="keyword" size="15"> 
                                    <button type="submit">검색하기</button> 
                                </form>
                            </div>
                        </div>
                        <hr>
                        <ul id="placesList"></ul>
                        <div id="pagination"></div>
                    </div>
                </div>

                <div id="result-area">
                    <div id="result-box"></div>
                </div>
                <div id="right-button">
                    <button type="button" id="add-place">장소 추가</button>
                </div>
            </div>
        </section>
    <main>
        <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
    </main>

    <script>

        const contextPath = "${contextPath}";

    </script>

    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e99da29f2b6829aa0cab8a9aa4d50a98&libraries=services"></script>
    <script src="${contextPath}/resources/js/Maker/travelMaker.js"></script>
</body>
</html>