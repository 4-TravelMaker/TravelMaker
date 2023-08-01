<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TravelMaker</title>
    <link rel="shortcut icon" type="image/x-icon" href="${contextPath}/resources/images/small_logo.png">


    <link rel="stylesheet" href="${contextPath}/resources/css/Region/region4.css">
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
                <p>양양 고인돌오토캠핌장</p>
                <p>강원 양양군</p>
                <mark>자연 속 힐링캠프</mark>
                <hr>
            </section>
            <section class="like">
                <p>좋아요</p>
                <section>
                     <img src="${contextPath}/resources/images/RegionDetail1/yangyang.jpg" width="550px" height="370px">
                </section>
            </section>
            <section class="article">
                <p>상세정보</p>
                <hr>
                <p>양양 고인돌 오토캠핑장은 강원도 양양군 서면에 자리했다. 양양IC 교차로에서 인제, 한계령, 오색 방면 좌측 방향으로 나와 10분 가량 달리면 도착한다. 이곳은 양양의 대표 관광지 가운데 하나인 남대천계곡 앞에 위치해 여름이면 캠퍼들로 붐빈다. 오토캠핑장 56면을 마련했으며, 대형 데크와 소형 데크로 구분된다. 모든 사이트에서 전기 사용이 가능하다. 화로는 바람이 불지 않는 날에 한해 사용할 수 있다. 주차장 뒤쪽에 화장실, 샤워장, 개수대가 있고, 그 옆으로 매점을 겸한 관리소가 있다. 매점에서는 주류를 비롯해 육류, 장작, 숯 등을 판매하고 있으며 관리소에서 타프, 릴선, 그릴, 화로 등 캠핑용품을 대여해 주고 있다.
                </p>
				
            </section>
            <section class="map">
                <section id="map-area">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3141.708725236248!2d128.5715201752294!3d38.053872771916396!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x5fd8a9a7ee6f9d85%3A0x8c923636aec62fef!2z7JaR7JaR6rOg7J2464-M7Lqg7ZSE!5e0!3m2!1sko!2skr!4v1690642173299!5m2!1sko!2skr" width="1000" height="400" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </section>
                <section class="map1-1">
                    <section>
                        <ul>
                            <li>문의 및 안내  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  010-5363-2632</li>
                             <br>
                            <li>주소  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;강원특별자치도 양양군 서면 고인돌길 200-47</li>
                            <br>
                            <li>주차  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;주차 가능</li>
                            
                        </ul>
                    </section>
                    <section>
                        <ul>
                            <li>홈페이지 	&nbsp;&nbsp; https://yygoindolcamp.modoo.at/</li>
                            <br>
                            <li>이용시간 &nbsp;&nbsp;	~ 익일 11:00</li>
                        </ul>
                    </section>
                </section>
            </section>

        </section>

      <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
    </main>
</body>
</html>