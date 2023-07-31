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
                <p>대천천</p>
                <p>부산 북구</p>
                <mark>경관이 뛰어난 화명동 대천천계곡</mark>
                <hr>
            </section>
            <section class="like">
                <p>좋아요</p>
                <section>
                     <img src="${contextPath}/resources/images/RegionDetail/busanBukGu.jpg" width="550px" height="370px">
                </section>
            </section>
            <section class="article">
                <p>상세정보</p>
                <hr>
                <p>대천 계곡의 중류에는 전설이 깃든 애기소(沼) 웅덩이가 있고 여기에 폭포수가 떨어져 장관을 이루었다. 시냇물이 가로지르는 암벽의 중간에 활등같이 잘룩 굽은 한가운데로 위쪽 물대야처럼 생긴 앵핑이소에서 흘러내린 물이 폭포를 이루어 웅덩이가 되니, 이것이 애기소이다. 옛날 폭포의 높이 4m로 여기서 내리 쏟아지는 물 밑 깊숙이 바위들이 앞뒤로 가려 있었는데 한가운데 수심(水深)은 어른 키의 세 길이나 될만큼 깊었고, 웅덩이의 넓이는 150여평이나 되었다고 한다. 이처럼 이름난 애기소도 여름철이면 닥치는 심한 폭우로 인해 떠내려온 바위들에 덮여 옛날의 정취는 많이 줄어들었다.
                </p>
            </section>
            <section class="map">
                <section id="map-area">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3258.504977323958!2d129.02406487617475!3d35.24369095388477!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x356895d781688557%3A0xd5d74003b62f0a43!2z7ZmU66qFIOuMgOyynOyynA!5e0!3m2!1sko!2skr!4v1690761924209!5m2!1sko!2skr" width="1000" height="400" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
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