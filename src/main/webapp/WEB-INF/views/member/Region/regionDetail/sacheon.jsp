<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
                <p>사천아이
                </p>
                <p>경남 사천시</p>
                <mark>한려해상국립공원을 한눈에 조망할 수 있는 대관람차</mark>
                <hr>
            </section>
            <section class="like">
                <p>좋아요</p>
                <section>
                     <img src="${contextPath}/resources/images/Region/hey.jpg" width="550px" height="370px">
                </section>
            </section>
            <section class="article">
                <p>상세정보</p>
                <hr>
                <pre>남해안 아름다운 한려해상국립공원 지역인 사천시 초양도에 위치한 종합관광 타운인 아라마루는 사천바다케이블카, 사천아이(대관람차), 아라마루 아쿠아리움, 회전목마, 동물원 등 놀이시설들을 한곳에서 이용할 수 있는 종합관광지이다.
                    그중에서 사천아이는 사천 유일의 대관람차이며, 한려해상국립공원의 아름다운 바다를 최고 높이 75M에서 바라보는 오션뷰 조망은 아름다움의 극치를 보여 주는 듯하다. 운행시간은 8~12분, 대당 4명이 탑승 가능하며 키 100cm 이상만 탑승 가능하나 보호자 동반 시 제한이 없다. 관람차 내에는 에어컨이 설치되어 있어 한여름에도 시원하게 이용할 수 있으며 비상전화기도 비치되어 있다.</pre>
            </section>
            <section class="map">
                <section id="map-area">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3246.44095145655!2d129.3363825763945!3d35.5428105375645!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3567cd0d93edbeb9%3A0x42b8e0827e3bfd7e!2z7Zek7J2064uk7J2064ud!5e0!3m2!1sko!2skr!4v1690441747654!5m2!1sko!2skr" width="1000" height="400" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </section>
                <section class="map1-1">
                    <section>
                        <ul>
                            <li>문의 및 안내</li>
                            <li>주소</li>
                            <li>주차</li>
                            <li>취급메뉴</li>
                        </ul>
                    </section>
                    <section>
                        <ul>
                            <li>홈페이지</li>
                            <li>영업시간</li>
                        </ul>
                    </section>
                </section>
            </section>

        </section>

      <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
    </main>
</body>
</html>