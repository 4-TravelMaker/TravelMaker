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
                <p>속초 얼라이브 하트</p>
                <p>강원 속초시</p>
                <mark>오감을 자극하는 테마에서 상상의 날개를 펼치다</mark>
                <hr>
            </section>
            <section class="like">
                <p>좋아요</p>
                <section>
                     <img src="${contextPath}/resources/images/RegionDetail1/sokcho.jpg" width="550px" height="370px">
                </section>
            </section>
            <section class="article">
                <p>상세정보</p>
                <hr>
				<p>얼라이브하트는 신기한 트릭아트를 체험하는 속초의 대표적인 실내 테마파크다. 노란 건물에 대형 하트 구조물이 붙어 있는 외관이 호기심을 불러일으킨다. 어드벤처 랜드, 네온 랜드, 스위트 랜드로 구성되어 있으며 각각 흥미로운 테마로 색다른 즐거움을 제공한다. 가장 인기 있는 코너는 여러 가지 착시 효과를 이용한 어드벤처 랜드이다. 작품마다 기발한 아이디어와 사실감 넘치는 연출이 돋보인다. 관람객들은 바다에서 거대한 참치를 잡거나 킹콩에게 붙잡히는 등 수 십 가지의 비현실적인 장면 속에 주인공이 되어 재미난 사진을 찍을 수 있다. 신비롭고 몽환적인 세계가 펼쳐진 네온 랜드와 달달한 분위기로 꾸며진 스위트 랜드도 인상적이다. 얼라이브하트 2층은 역동적인 미션을 수행하며 미로를 탈출하는 다이나믹메이즈가 자리한다. 해저 미로를 탐험하는 스토리텔링을 바탕으로 장애물을 뛰어넘고 감옥 미로를 체험하는 콘셉트로 꾸며졌다. 다이나믹메이즈는 여럿이 팀을 이뤄 협동해야 하는 팀워크 프로그램으로 또 다른 재미를 느낄 수 있다.
				</p>
            </section>
            <section class="map">
                <section id="map-area">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d25081.52221194895!2d128.47923167431634!3d38.20547889999998!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x5fd8bd18e58ecc07%3A0x5a5dd06be222908e!2z7Ja865287J2067iM7ZWY7Yq4!5e0!3m2!1sko!2skr!4v1690641763635!5m2!1sko!2skr" width="1000" height="400" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </section>
                <section class="map1-1">
                    <section>
                        <ul>
                            <li>문의 및 안내  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  		033-633-2004</li>
                             <br>
                            <li>주소  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;강원특별자치도 속초시 원암학사평길 88</li>
                            <br>
                            <li>주차  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;있음 (약 소형 30대 주차가능), 무료</li>
                            <br>
                            <li>접근로 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	출입구까지 경사로가 설치되어 있음</li>
                        </ul>
                    </section>
                    <section>
                        <ul>
                            <li>홈페이지 	&nbsp;&nbsp; http//aliveheart.co.kr</li>
                            <br>
                            <li>이용시간 &nbsp;&nbsp;	 10:00~18:00 (입장마감 17:00)</li>
                        </ul>
                    </section>
                </section>
            </section>

        </section>

      <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
    </main>
</body>
</html>