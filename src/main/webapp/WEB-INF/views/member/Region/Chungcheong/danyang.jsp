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
                <p>단양 수양개빛터널</p>
                <p>충청북도 단양군</p>
                <mark>빛터널 지나 비밀의정원으로</mark>
                <hr>
            </section>
            <section class="like">
                <p>좋아요</p>
                <section>
                     <img src="${contextPath}/resources/images/Region/Chungcheong/danyang.jpg" width="550px" height="370px">
                </section>
            </section>
            <section class="article">
                <p>상세정보</p>
                <hr>
                <p>동굴은 대표적인 내륙 피서지다. 단양은 우리나라 석회동굴을 대표하는 고수동굴과 천동동굴 등 동굴 여행지가 여럿이다. 
                    자연 동굴뿐만 아니다. 수양개빛터널, 이끼터널, 천주터널 등 흥미진진한 인공 터널이 많다. 빛, 이끼 등 자연 동굴과 다른 요소가 매력 있다. 
                    그 가운데 수양개빛터널은 많은 이들이 찾는다. 수양개라는 재미난 이름으로 쉬이 잊히지 않는데, ‘수양버들이 많은 개울’을 뜻한다. 
                    선사 유적이 발견된 애곡리 일대를 아우르는 지명이다. 근래 단양에서 각광 받는 여행지가 모여 있다. 이곳에 일제강점기에 지은 철도 터널이 있는데, 이를 중심으로 수양개빛터널이라는 빛의 여행지를 꾸몄다. 
                    수양개선사유물전시관이 어우러져 한층 다채롭다.</p>
            </section>
            <section class="map">
                <section id="map-area">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d12752.325231628962!2d128.3138381013005!3d36.9601149182659!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3563f540b338c583%3A0x7e9464d1cde50ed5!2z7IiY7JaR6rCc67mb7YSw64SQ!5e0!3m2!1sko!2skr!4v1690735271311!5m2!1sko!2skr" width="1000" height="400" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
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