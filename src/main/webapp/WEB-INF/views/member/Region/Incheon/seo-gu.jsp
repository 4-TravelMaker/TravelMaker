<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>청라 백금당</title>
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
                <p>청라 백금당</p>
                <p>인천 서구</p>
                <mark>퐁실퐁실 수플레 맛집</mark>
                <hr>
            </section>
            <section class="like">
                <p>좋아요</p>
                <section>
                     <img src="${contextPath}/resources/images/Region/Incheon/seo-gu.jpg" width="550px" height="370px">
                </section>
            </section>
            <section class="article">
                <p>상세정보</p>
                <hr>
                <p>인천 서구에 위치한 청라백금당에서는 다양한 종류의 수플레 케이크를 선보이고 있다. 신선한 생과일과 폭신한 수플레 케이크와의 궁합을 꼭 맛보기를 추천한다.</p>
            </section>
            <section class="map">
                <section id="map-area">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d101249.36424154048!2d126.57402015820317!3d37.53049230000001!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357b7ff860921629%3A0x715baff78818f226!2z7LKt652867Cx6riI64u5!5e0!3m2!1sko!2skr!4v1690729341324!5m2!1sko!2skr" width="1000" height="400" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </section>
                <section class="map1-1">
                    <section>
                        <ul>
                            <li>문의 및 안내 | 0507-1357-3008</li>
                            <li>주소 | 인천 서구 청라커낼로319번길 3-17 . 101호</li>
                            <li>주차 | 가능</li>
                            <li>취급메뉴 | 백금당 케이크 15,000원 / 백금당 팬수플레 11,000원</li>
                        </ul>
                    </section>
                    <section>
                        <ul>
                            <li>홈페이지 | </li>
                            <li>영업시간 | 평일, 주말 12:00-22:00</li>
                        </ul>
                    </section>
                </section>
            </section>

        </section>

      <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
    </main>
</body>
</html>