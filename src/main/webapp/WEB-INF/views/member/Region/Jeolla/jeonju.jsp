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
                <p>두이모카페</p>
                <p>전라북도 전주시</p>
                <mark>와플과 비빔밥의 이색적인 만남</mark>
                <hr>
            </section>
            <section class="like">
                <p>좋아요</p>
                <section>
                     <img src="${contextPath}/resources/images/Region/Jeolla/jeonju.jpg" width="550px" height="370px">
                </section>
            </section>
            <section class="article">
                <p>상세정보</p>
                <hr>
                <p>한옥마을이 한눈에 내려다보이는 자만벽화마을에도 요즘 잘 나가는 먹거리가 있다. 최근 MBC <놀면 뭐 하니> 전국 간식 자랑 편에 소개되어 인기를 끈 두이모 카페의 비빔밥 와플이다. 
                   밥으로 만든 와플 안에 고기와 채소가 듬뿍 들어있는 모습을 보는 것만으로도 한국인의 DNA가 깨어나는 듯하다. 생김새는 김밥이나 토르티야 샌드위치와 비슷하지만, 맛은 완전히 다르다. 
                   양념 된 밥을 구웠음에도 딱딱하지 않고, 은근히 매콤해서 담백한 수제 요구르트와 잘 어울린다. 와플을 손바닥으로 납작하게 눌러먹으면 밥과 채소, 고기를 한입에 조화롭게 맛볼 수 있다.</p>
            </section>
            <section class="map">
                <section id="map-area">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d25883.362928128867!2d127.15675929999998!3d35.814160699999995!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x35702362bd6ca897%3A0x4a87a2504bd1e08c!2z65GQ7J2066qo7Lm07Y6Y!5e0!3m2!1sko!2skr!4v1690737190938!5m2!1sko!2skr" width="1000" height="400" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
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