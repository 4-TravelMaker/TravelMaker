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
                <p>화춘옥 청담점</p>
                <p>서울 강남구</p>
                <mark>대한민국 최초의 원조수원갈비</mark>
                <hr>
            </section>
            <section class="like">
                <p>좋아요</p>
                <section>
                     <img src="${contextPath}/resources/images/Region/Seoul/gangnam.jpg" width="550px" height="370px">
                </section>
            </section>
            <section class="article">
                <p>상세정보</p>
                <hr>
                <p>1945년 개업한 대한민국 최초의 원조수원갈비 화춘옥이다. 수원식 양념갈비의 시작은 화춘옥에서 시작되어 수원뿐 아니라 전국 각지의 갈비 조리법에 영향을 끼쳐 갈비의 대중화에 선구적 역할을 했다. 화춘옥의 양념갈비는 최상급의 소갈비를 간장이 아닌 소금과 참기름을 베이스로 양념해 담백하고 자극적이지 않아 부담없이 먹기 좋다. 화춘옥 청담은 1,2층으로 나뉘어 프라이빗한 룸과 편안하게 식사하실 수 있는 홀까지 다양하게 좌석이 구비되어 있다.</p>
            </section>
            <section class="map">
                <section id="map-area">
                    <iframe src="https://korean.visitkorea.or.kr/mylocation/mylocation.do?cotId=0600a3bb-0af9-4c57-85f4-243b5a26824f&service=contents&latitude=37.5215355379&longitude=127.0377280114" width="1000" height="400" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
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