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
                <p>서울식물원</p>
                <p>서울 강서구</p>
                <mark>도심 속 아름다운 녹색 명소</mark>
                <hr>
            </section>
            <section class="like">
                <p>좋아요</p>
                <section>
                     <img src="${contextPath}/resources/images/RegionDetail/gangseo.jpg" width="550px" height="370px">
                </section>
            </section>
            <section class="article">
                <p>상세정보</p>
                <hr>
                <p>서울식물원은 세계 12개 도시 식물과 식물 문화를 소개하고 도시의 생태감수성을 높이기 위해 서울에 남은 마지막 개발지 마곡에 조성되었다. 식물원과 공원을 결합한 이른바 ‘보타닉 공원’으로서 면적은 축구장 70개 크기에 달한다. 멸종 위기 야생식물 서식지를 확대하고 번식이 어려운 종의 증식 연구, 품종 개발 등 식물의 육성이라는 식물연구보전기관 본연의 역할은 물론, 도시 정원문화 확산의 교두보이자 평생교육기관의 역할을 수행한다. 식물원은 열린 숲과 주제원, 호수원, 습지원 등 4가지 공간으로 나뉘며, 그중 하이라이트는 식물문화센터와 야외 주제정원, 마곡문화관이 포함된 주제원이다.</p>
            </section>
            <section class="map">
                <section id="map-area">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d50598.23997620694!2d126.7587955486328!3d37.5694332!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357c9d01503c1eeb%3A0x947516d30347709a!2z7ISc7Jq47Iud66y87JuQ!5e0!3m2!1sko!2skr!4v1690762228595!5m2!1sko!2skr" width="1000" height="400" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>                </section>
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