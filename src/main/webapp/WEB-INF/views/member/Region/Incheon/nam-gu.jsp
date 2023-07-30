<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>동추원 불고기</title>
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
                <p>동추원 불고기</p>
                <p>인천 남구</p>
                <mark>고소하고 진한 한우의 맛을 느낄 수 있는 불고기 맛집</mark>
                <hr>
            </section>
            <section class="like">
                <p>좋아요</p>
                <section>
                     <img src="${contextPath}/resources/images/Region/Incheon/nam-gu.jpg" width="550px" height="370px">
                </section>
            </section>
            <section class="article">
                <p>상세정보</p>
                <hr>
                <p>인천 미추홀구 학익소에 위치한 동추원 불고기는 소고기 불고기를 주력으로 하며, 반찬이 풍부하고 샤브샤브처럼 육수에 익혀먹을 수 있는 야채도 다양하다. 전통적인 한국 보양요리인 동추원 불고기를 즐길 수 있는 좋은 선택지이다.</p>
            </section>
            <section class="map">
                <section id="map-area">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3167.8065625873132!2d126.67076899999999!3d37.4416742!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357b79a3d8019af7%3A0xbc6857bfbf3b873a!2z64-Z7LaU7JuQ67aI6rOg6riw!5e0!3m2!1sko!2skr!4v1690728618099!5m2!1sko!2skr" width="1000" height="400" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </section>
                <section class="map1-1">
                    <section>
                        <ul>
                            <li>문의 및 안내 | 0507-1402-2293</li>
                            <li>주소 | 인천 미추홀구 학익소로 67 1층 동추원불고기</li>
                            <li>주차 | 가능</li>
                            <li>취급메뉴 | 한우 불고기 21,000원 / 옛날 불고기 18,500원</li>
                        </ul>
                    </section>
                    <section>
                        <ul>
                            <li>홈페이지 | https://blog.naver.com/usamifood</li>
                            <li>영업시간 | 평일, 주말 11:00-21:00</li>
                        </ul>
                    </section>
                </section>
            </section>

        </section>

      <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
    </main>
</body>
</html>