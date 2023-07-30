<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>일산 호수공원</title>
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
                <p>일산 호수공원</p>
                <p>경기 고양시</p>
                <mark>호숫길 따라 걸으며 느끼는 일상의 여유로움</mark>
                <hr>
            </section>
            <section class="like">
                <p>좋아요</p>
                <section>
                     <img src="${contextPath}/resources/images/Region/Gyeonggi/goyang-si.jpg" width="550px" height="370px">
                </section>
            </section>
            <section class="article">
                <p>상세정보</p>
                <hr>
                <p>일산 호수공원은 산책로, 놀이터, 조각상, 작은 동물원이 있으며 야외 축제를 즐길 수 있는 호숫가 휴양지이다.</p>
            </section>
            <section class="map">
                <section id="map-area">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3158.6790759957007!2d126.76367587541354!3d37.656748318950726!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357c8541726f44d1%3A0xe2a7cae3a3b21eed!2z7J287IKw7Zi47IiY6rO17JuQ!5e0!3m2!1sko!2skr!4v1690730320285!5m2!1sko!2skr" width="1000" height="400" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </section>
                <section class="map1-1">
                    <section>
                        <ul>
                            <li>문의 및 안내 | 031-8075-4347</li>
                            <li>주소 | 경기 고양시 일산동구 호수로 731</li>
                            <li>주차 | 가능</li>
                            <li>취급메뉴 | </li>
                        </ul>
                    </section>
                    <section>
                        <ul>
                            <li>홈페이지 | http://www.goyang.go.kr/park/index.do</li>
                            <li>영업시간 | 24시간 영업</li>
                        </ul>
                    </section>
                </section>
            </section>

        </section>

      <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
    </main>
</body>
</html>