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
                <p>수암골 벽화마을</p>
                <p>충청북도 청주시</p>
                <mark>공간의 재탄생! 청주 힙플레이스 수암골</mark>
                <hr>
            </section>
            <section class="like">
                <p>좋아요</p>
                <section>
                     <img src="${contextPath}/resources/images/Region/Chungcheong/cheongju.jpg" width="550px" height="370px">
                </section>
            </section>
            <section class="article">
                <p>상세정보</p>
                <hr>
                <p>1950년, 한국전쟁 당시 형성된 작은 동네 ‘수암골’. 2007년 진행한 공공 프로젝트로 현재의 수암골 벽화마을로 재탄생 하였고, 이제는 여러 관광객들이 찾는 명소가 되었습니다. 
                   수암골에 오르면 청주 시내의 모습이 보이고, 골목골목 귀여운 벽화와 다양한 소품을 만나 볼 수 있는데요. 수암골은 주변 환경과 어우러진 풍경도 아름다워 많은 드라마들이 촬영되기도 하였습니다.
                   수암골 벽화마을 여행 코스는 관광안내소로부터 시작되는데요. 정면에 위치한 큰 길로 들어가 공방, 피아노 골목 거리를 돌아다니다 보면 수암골 벽화마을의 매력을 느낄 수 있습니다.  화려하지는 않지만 소박함에 저절로 웃음이 지어지는 작은 동네 수암골.</p>
            </section>
            <section class="map">
                <section id="map-area">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3201.132593434205!2d127.49171997705736!3d36.647260676303866!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x356527bfd600be4f%3A0x9df877cf4bbc3251!2z7IiY7JWU6rOo!5e0!3m2!1sko!2skr!4v1690734892926!5m2!1sko!2skr" width="1000" height="400" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
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