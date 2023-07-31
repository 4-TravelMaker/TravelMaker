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
                <p>주문진해변</p>
                <p>강원 강릉시</p>
                <mark>맑은 바닷물과 항구의 매력을 동시에 느낄 수 있는 곳</mark>
                <hr>
            </section>
            <section class="like">
                <p>좋아요</p>
                <section>
                     <img src="${contextPath}/resources/images/RegionDetail1/jumunjin.jpg" width="550px" height="370px">
                </section>
            </section>
            <section class="article">
                <p>상세정보</p>
                <hr>
             	<p>주문진 해변은 주문진읍 향호리에 위치하고 길이 700m, 면적 9,608㎡의 넓은 백사장과 수심이 얕고 바닷물이 맑아 가족 단위 피서지에 적합한 곳이다. 하얀 모래밭이 흰 속살을 드러내고 파도가 연안에서 흰 거품을 드리우면 무더위를 잊게 한다. 울창한 해송은, 피서객들에게 그늘을 만들어 주고 포근한 분위기를 주어 밤새 이야기꽃을 피워 낭만과 젊음을 발산하게 한다. 또한 솔밭 안에 있는 체육공원은 피서를 즐기면서 체력도 단련할 수 있으며, 주변에는 가족호텔과 깨끗이 정비된 민박집과 6,600㎡의 소나무 숲에 하루 440곳의 텐트를 설치할 수 있는 야영장이 있다. 바로 옆에는 향호 저수지가 있어 담수어 낚시도 가능하며 멀지 않은 곳에 주문진항, 우암진항, 오리진항 등 항구가 많아 신선한 해물을 저렴한 가격에 즐길 수 있다. 봄철에는 꽁치, 여름에는 오징어가, 가을, 겨울에는 복어와 양미리 등이 많이 잡혀 제철에 가면 저렴한 가격으로 구입할 수 있다. 또 바다를 끼고 횟집과 회센터들이 밀집해 있어 즉석에서 횟감을 맛볼 수 있다.</p>
				
            </section>
            <section class="map">
                <section id="map-area">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d25185.9760918114!2d128.7991377708208!3d37.90128870499992!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3561fd4ce9ef554d%3A0x534c8cee7333a9c!2z7KO866y47KeE7ZW067OA!5e0!3m2!1sko!2skr!4v1690640288759!5m2!1sko!2skr" width="1000" height="400" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </section>
                <section class="map1-1">
                    <section>
                        <ul>
                            <li>문의 및 안내  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  	033-640-5422</li>
                             <br>
                            <li>주소  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;강원특별자치도 강릉시 주문진읍 주문북로 210</li>
                            <br>
                            <li>주차  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;주차 가능</li>
                            <br>
                            <li>접근로 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;광장형 접근로를 확보하고 있어 이용에 적절한 형태임 (일부구간 트랜치 있음)</li>
                        </ul>
                    </section>
                    <section>
                        <ul>
                            <li>홈페이지 	&nbsp;&nbsp; http://jumunjin-beach.co.kr/</li>
                            <br>
                            <li>이용시간 &nbsp;&nbsp;	상시개방</li>
                        </ul>
                    </section>
                </section>
            </section>

        </section>

      <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
    </main>
</body>
</html>