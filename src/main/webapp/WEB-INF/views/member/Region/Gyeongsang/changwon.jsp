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
                <p>진해해안도로</p>
                <p>경남 창원시</p>
                <mark>바다와 산의 조화</mark>
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
                <pre>진해해안도로는 진해 행암동에서 시작해 진해해양공원과 남문 휴게소를 거쳐 용원에 이르는 드라이브 코스이다. 2000년 초 자전거 도로가 조성되면서 드라이브 명소로 입소문이 나기 시작했다. 풍호동 행암에서 안골마을까지 총 20km에 이르는 길을 해안도로라고 하는데, 해안도로를 중심으로 바다와 산을 두루 거치기 때문에 봄에는 진해 벚꽃도 감상할 수 있다. 해안도로를 따라 드라이브를 하다가 남문휴게소에 정차하고 흰돌메공원에 오르면 거가대교와 신항만을 한눈에 내려다볼 수 있다. 또 진해를 해군의 도시라고 부르는 만큼 해안도로는 해군 교육사령부 앞도 지난다. </pre>
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