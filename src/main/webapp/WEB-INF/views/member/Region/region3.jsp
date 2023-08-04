<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="bookmarkState" value="${bookmarkState}" />

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TravelMaker</title>
    <link rel="shortcut icon" type="image/x-icon" href="${contextPath}/resources/images/small_logo.png">


    <link rel="stylesheet" href="${contextPath}/resources/css/Region/region3.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/main-style.css">


    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/ef988defcf.js" crossorigin="anonymous"></script>
    
</head>
<body>
    <main>
        <jsp:include page="/WEB-INF/views/common/header.jsp"/>

        <section id="middle1">
            <section class = "title">
                <p><mark>${region.boardTitle}</mark></p>
                <p>${region.categoryName}</p>
                <hr>

                <div class="bookmark-area">
                    <c:if test="${bookmarkState == 'N'}">
                        <i class="fa-regular fa-bookmark fa-2xl" id="bookmark-btn" style="color: #000000;"></i>
                    </c:if>

                    <c:if test="${bookmarkState == 'Y'}">
                        <i class="fa-solid fa-bookmark fa-2xl" id="bookmark-btn2" style="color: #99d8c7;"></i>
                    </c:if>
                </div>
                
            </section>
            <section class="like">
                <section>
                    <img src="${contextPath}${region.imgRename}" width="550px" height="370px">
                </section>
            </section>
            <section class="article">
                <p>상세정보</p>
                <hr>
                <p>${region.boardContent}</p>
            </section>
            <section class="map">
                <section id="map-area">
                    <iframe src="${region.imgOriginal}" width="1000" height="400" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </section>
                <section class="map1-1">

                    <p><mark style="background-color: rgb(247, 247, 216); color: gray;">이런 테마 여행지는 어떠세요?</mark></p>

                    <section class="hashtag">
                        <a href="${contextPath}/theme/activity?type=2" style="color: gray;">
                            <div>#액티비티</div>
                        </a>
                        <a href="${contextPath}/theme/famousRestaurant?type=2"style="color: gray;">
                            <div>#맛집</div>
                        </a>
                        <a href="${contextPath}/theme/cafe?type=2"style="color: gray;">
                            <div>#카페</div>
                        </a>
                        <a href="${contextPath}/theme/coupleTrip?type=2"style="color: gray;">
                            <div>#커플 여행</div>
                        </a>
                    </section>
                    <section class="hashtag">
                        <a href="${contextPath}/theme/camPing?type=2" style="color: gray;">
                            <div>#캠핑</div>
                        </a>
                        <a href="${contextPath}/theme/pet?type=2"style="color: gray;">
                            <div>#반려견 동반</div>
                        </a>
                        <a href="${contextPath}/theme/trainTrip?type=2"style="color: gray;">
                            <div>#기차 여행</div>
                        </a>
                        <a href="${contextPath}/theme/familyTrip?type=2"style="color: gray;">
                            <div>#가족 여행</div>
                        </a>
                    </section>
                </section>
            </section>

        </section>

    <jsp:include page="/WEB-INF/views/common/footer.jsp"/>

    <script>
        const contextPath = "${contextPath}";
        const boardNo = "${param.board}";
        const bookmarkState = "${bookmarkState}";
    </script>


      <script src="${contextPath}/resources/js/Region/region3.js"></script>
    </main>
</body>
</html>