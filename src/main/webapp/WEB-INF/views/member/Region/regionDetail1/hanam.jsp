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
                <p>스타필드 하남</p>
                <p>경기 하남시</p>
                <mark>반려동물과 쇼핑,레저,힐링을 한 번에 해결</mark>
                <hr>
            </section>
            <section class="like">
                <p>좋아요</p>
                <section>
                     <img src="${contextPath}/resources/images/RegionDetail1/hannam.jpg" width="550px" height="370px">
                </section>
            </section>
            <section class="article">
                <p>상세정보</p>
                <hr>
                <p>쇼핑, 레저, 힐링이 한 곳에서 이뤄지는 쇼핑 테마파크이다. 아침부터 저녁까지 가족과 친구들이 함께 쇼핑하고, 맛있는 음식과 레저를 즐기고, 편히 쉴 수도 있는 곳, 스타필드 하남으로 원데이 트립을 제안한다. 강남에서 자동차로 30분에 도착할 수 있는 탁월한 접근성으로 수도권 가족단위 고객들에게 최적의 나들이코스이다. 동시에 6200대 주차할 수 있는 국내 최대의 주차공간도 마련되어있다.
                </p>
             	
				
            </section>
            <section class="map">
                <section id="map-area">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3163.4093218336916!2d127.2211426754082!3d37.54541902533945!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357cb3d2021e0c6f%3A0xbf6f19bd4ac702bc!2z7Iqk7YOA7ZWE65OcIO2VmOuCqA!5e0!3m2!1sko!2skr!4v1690638928539!5m2!1sko!2skr" width="1000" height="400" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </section>
                <section class="map1-1">
                    <section>
                        <ul>
                            <li>문의 및 안내  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  대표번호 1833-9001 </li>
                             <br>
                            <li>주소  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;경기도 하남시 미사대로 750</li>
                            <br>
                            <li>주차  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;주차 가능</li>
                            <br>
                            <li>접근로 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;출입구까지 턱이 없어 휠체어 접근 가능함</li>
                        </ul>
                    </section>
                    <section>
                        <ul>
                            <li>홈페이지 	https://www.starfield.co.kr</li>
                            <br>
                            <li>이용시간 &nbsp;&nbsp;	상점마다 다름</li>
                            <br>
                            <li>휴일 &nbsp;&nbsp;	연중무휴 (백화점, 트레이더스 별도)</li>
                        </ul>
                    </section>
                </section>
            </section>

        </section>

      <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
    </main>
</body>
</html>