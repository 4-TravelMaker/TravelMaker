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
                <p>도선사(서울)</p>
                <p>서울 강북구</p>
                <mark>사찰내 연못에 동전을 던져 소원을 비는 사찰</mark>
                <hr>
            </section>
            <section class="like">
                <p>좋아요</p>
                <section>
                     <img src="${contextPath}/resources/images/RegionDetail/gangbuk.jpg" width="550px" height="370px">
                </section>
            </section>
            <section class="article">
                <p>상세정보</p>
                <hr>
                <p>우이동 버스 종점에서 사찰 진입로인 포장도로길 청담로를 따라 ''도선고개''와 청담대종사의 진필 휘호인 "자비무적, 밤생도량"이 새겨진 자비문과 바위고개 청담폭포 등을 지나 2.5km쯤 오르면 삼각산의 주봉인 백운대 만경봉 인수봉을 배경으로 도선사의 현관인 안양암과 마음의 광장이 나타난다.호국참회 본찰 도선사는 1,100여 년전 신라말의 유명한 도승 도선국사가 명산승지를 답사하다가 산세가 절묘하고 풍경이 청수하여 천년후 말세 불법이 재흥하리라'' 예견하고 건립한 사찰이다.</p>
            </section>
            <section class="map">
                <section id="map-area">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3158.7407039816867!2d126.9869845262595!3d37.655299669032864!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357cbdd1cf5ed975%3A0x9922d2e09b0aecc5!2z7IK86rCB7IKwIOuPhOyEoOyCrA!5e0!3m2!1sko!2skr!4v1690761590425!5m2!1sko!2skr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>                </section>
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