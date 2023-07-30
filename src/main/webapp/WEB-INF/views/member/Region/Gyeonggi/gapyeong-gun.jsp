<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>아침고요수목원</title>
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
                <p>아침고요수목원</p>
                <p>경기 가평군</p>
                <mark>푸르른 자연을 만끽할 수 있는 정원에서의 힐링</mark>
                <hr>
            </section>
            <section class="like">
                <p>좋아요</p>
                <section>
                     <img src="${contextPath}/resources/images/Region/Gyeonggi/gapyeong-gun.jpg" width="550px" height="370px">
                </section>
            </section>
            <section class="article">
                <p>상세정보</p>
                <hr>
                <p>아침고요수목원은 경기도 가평군에 위치하여 10만평의 넓이에 총 4,500여종의 식물을 보유하고 있는 원예수목원이다. 1996년 5월, 삼육대학교 원예학과 교수인 한상경교수가 직접 설계하고 조성하였으며, 경기도 가평군 상면 행현리 축령산에 위치하고 있다.</p>
            </section>
            <section class="map">
                <section id="map-area">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3154.9647148850427!2d127.34991147541771!3d37.743972013934595!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357c9fbf894b32cf%3A0x5d87cf93a53ba38d!2z7JWE7Lmo6rOg7JqU7IiY66qp7JuQ!5e0!3m2!1sko!2skr!4v1690729893854!5m2!1sko!2skr" width="1000" height="400" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </section>
                <section class="map1-1">
                    <section>
                        <ul>
                            <li>문의 및 안내 | 1544-6703</li>
                            <li>주소 | 경기도 가평군 상면 수목원로 432</li>
                            <li>주차 | 가능</li>
                            <li>취급메뉴 | </li>
                        </ul>
                    </section>
                    <section>
                        <ul>
                            <li>홈페이지 | https://www.morningcalm.co.kr/</li>
                            <li>영업시간 | 평일, 주말 08:30-19:00</li>
                        </ul>
                    </section>
                </section>
            </section>

        </section>

      <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
    </main>
</body>
</html>