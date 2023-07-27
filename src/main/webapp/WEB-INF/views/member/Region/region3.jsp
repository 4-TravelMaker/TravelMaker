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
                <p>헤이다이닝</p>
                <p>울산 남구</p>
                <mark>매콤한 먹물파스타가 맛있는 레스토랑</mark>
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
                <p>울산 삼산동 업스퀘어 근처 맥도날드 뒤편에 있는 헤이다이닝은 깔끔하고 모던한 장소에서 식사를 즐길 수 있는 이탈리안 레스토랑이다. 대표 메뉴는 타이거 쉬림프 로제 파스타, 이베리코 온 더 리조또, 블랙앵거스 살치살 스테이크이고 그 외 스퀴드 잉크 파스타, 오징어먹물 아란치니, 자몽에이드 등 다양한 메뉴가 있다. 밤이 되면 조도로 분위기를 조절해서 연인들의 데이트 장소로 인기가 많다. 태화강변이 근처에 있어 함께 둘러보기 좋고, 서점과 미술관, 공원도 있다.</p>
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