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
                <p>하늬랜더팜</p>
                <p>강원 고성군</p>
                <mark>향기가 머무는곳,하늬 라벤더 팜</mark>
                <hr>
            </section>
            <section class="like">
                <p>좋아요</p>
                <section>
                     <img src="${contextPath}/resources/images/RegionDetail1/gosung.jpg" width="550px" height="370px">
                </section>
            </section>
            <section class="article">
                <p>상세정보</p>
                <hr>
                <p>'라벤더 전도사’로 불리는 하덕호 대표가 지난 2006년부터 3만 3000여 ㎡에 라벤더를 심어 조성한 곳이다. 경기도 의왕시에서 허브 숍을 운영하던 하 대표는 허브 제품의 원료가 되는 라벤더를 직접 재배하려고 이곳에 정착했다. 겨울에 눈이 많이 오면서도 따뜻한 고성은 우리나라에서 라벤더가 자라기에 가장 좋은 기후 조건을 갖췄다.
                </p>
				
            </section>
            <section class="map">
                <section id="map-area">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3129.015633609735!2d128.4100681806777!3d38.34862019925422!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x5fd88d61bac9f5b5%3A0xeb57d668b89c90b0!2z7ZWY64qs652867Kk642U7Yyc!5e0!3m2!1sko!2skr!4v1690641013334!5m2!1sko!2skr" width="1000" height="400" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </section>
                <section class="map1-1">
                    <section>
                        <ul>
                            <li>문의 및 안내  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  	033-681-0005</li>
                             <br>
                            <li>주소  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;강원특별자치도 고성군 간성읍 꽃대마을길 175</li>
                            <br>
                            <li>주차  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;주차 가능</li>
                            <br>
                            <li>접근로 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;광장형 접근로를 확보하고 있어 이용에 적절한 형태임</li>
                        </ul>
                    </section>
                    <section>
                        <ul>
                            <li>홈페이지 	&nbsp;&nbsp; http://www.lavenderfarm.co.kr/</li>
                            <br>
                            <li>이용시간 &nbsp;&nbsp;	월마다 다름 홈페이지 참고</li>
                        </ul>
                    </section>
                </section>
            </section>

        </section>

      <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
    </main>
</body>
</html>