<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>배다리 헌책방 골목</title>
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
                <p>배다리 헌책방 골목</p>
                <p>인천 동구</p>
                <mark>'도깨비' 촬영장으로 유명한 인천의 유일한 헌책방 거리</mark>
                <hr>
            </section>
            <section class="like">
                <p>좋아요</p>
                <section>
                     <img src="${contextPath}/resources/images/Region/Incheon/dong-gu.jpg" width="550px" height="370px">
                </section>
            </section>
            <section class="article">
                <p>상세정보</p>
                <hr>
                <p>인천광역시 동구 금곡동에 위치한 배다리 헌책방 골목은 인천의 유일한 헌책방 골목이다. 배다리 헌책방 골목 입구에는 배다리 사람의 옛 모습과 생활상을 그려 넣은 배다리 벽화 거리가 있다. 재래시장과 전통 공예상가, 인천 최초의 공립학교, 갤러리, 사진관 등 다양한 볼거리가 가득하다. 드라마 <도깨비>가 이곳에서 촬영되면서 인기 관광지로 떠올랐다. 배다리란 지명은 작은 배가 바닷물이 들어오던 수로를 통해 철교 밑까지 드나들었다는 데서 유래했다. 1883년 개항 이후 일본인들에게 개항장 일대를 빼앗긴 조선인들이 모여 살면서 이곳에 마을이 형성됐다.</p>
            </section>
            <section class="map">
                <section id="map-area">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3166.4998602418864!2d126.63391847540477!3d37.47252902951378!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357b78ebf770340d%3A0x3681f0d28dd0f8ee!2z67Cw64uk66asIO2XjOyxheuwqeqxsOumrA!5e0!3m2!1sko!2skr!4v1690727501614!5m2!1sko!2skr" width="1000" height="400" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </section>
                <section class="map1-1">
                    <section>
                        <ul>
                            <li>문의 및 안내 | 032-770-6100</li>
                            <li>주소 | 인천 동구 금곡로 18-10</li>
                            <li>주차 | 가능</li>
                            <li>취급메뉴 | </li>
                        </ul>
                    </section>
                    <section>
                        <ul>
                            <li>홈페이지 | https://www.icdonggu.go.kr/</li>
                            <li>영업시간 | 점포별 상이</li>
                        </ul>
                    </section>
                </section>
            </section>

        </section>

      <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
    </main>
</body>
</html>