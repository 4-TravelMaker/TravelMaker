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
                <p>장충동 족발 골목</p>
                <p>서울 중구</p>
                <mark>명품 족발을 맛볼 수 있는 거리</mark>
                <hr>
            </section>
            <section class="like">
                <p>좋아요</p>
                <section>
                     <img src="${contextPath}/resources/images/RegionDetail/jungGu.jpg" width="550px" height="370px">
                </section>
            </section>
            <section class="article">
                <p>상세정보</p>
                <hr>
                <p>장충동 족발은 70년대 후반과 80년대 초반을 거치면서 이름을 타게 되고 덩달아 지금의 족발거리에 식당들이 줄 지어 생기기 시작했다. 이렇게 만들어지기 시작한 게 장충동 족발거리다. 지금도 큰길과 좁은 골목에 십여 집이 옹기종기 모여 옛 맛을 지켜가고 있다. 그때부터 지금까지 사람들의 변치 않는 사랑을 받으며 수십년 동안 족발거리의 명성을 지켜온 것은 푸짐하고 맛 좋은 족발의 맛 때문일 것이다. 족발을 만드는 집 마다 그 맛의 차이가 조금씩 난다는 게 이 거리의 아주머니들 설명이다. 어느집이 맛있다고 이야기 할 수 없는 것은 개인의 입맛과 취향이 다르기 때문. 족발 거리에서 족발과 함께 빈대떡과 파전 등 곁들여 나오는 다른 음식도 즐겨볼만 하다.</p>
            </section>
            <section class="map">
                <section id="map-area">
                    <iframe src="https://korean.visitkorea.or.kr/mylocation/mylocation.do?cotId=4cb342da-9f3a-47a7-beae-bc54ff1fd28c&service=contents&latitude=35.2437901894&longitude=129.0278976536" width="1000" height="400" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
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