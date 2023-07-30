<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>부산타워</title>
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
                <p>부산타워</p>
                <p>부산 중구</p>
                <mark>부산 야경을 한눈에 볼 수 있는 전망대</mark>
                <hr>
            </section>
            <section class="like">
                <p>좋아요</p>
                <section>
                     <img src="${contextPath}/resources/images/Region/Busan/jung-gu.jpg" width="550px" height="370px">
                </section>
            </section>
            <section class="article">
                <p>상세정보</p>
                <hr>
                <p>부산 구도심의 중심에 있는 거대한 전망탑인 부산타워는 부산 옛날 시가지의 경치를 한눈에 볼 수 있다. 특히 바다 쪽 뷰가 무척이나 좋은 편이다. 멀리서부터 잘 보이는 하얀 탑이 항구도시라는 부산 이미지에 잘 들어맞고, 외지인들 입장에선 제법 볼 만한 랜드마크이다.</p>
            </section>
            <section class="map">
                <section id="map-area">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d13056.883848132216!2d129.032368!3d35.101193!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3568e974db8343ab%3A0xd25a159d0652ff4e!2z64uk7J207JWE66qs65Oc7YOA7JuMICjrtoDsgrDtg4Dsm4wp!5e0!3m2!1sko!2skr!4v1690726737272!5m2!1sko!2skr" width="1000" height="400" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </section>
                <section class="map1-1">
                    <section>
                        <ul>
                            <li>문의 및 안내 | 051-661-9393</li>
                            <li>주소 | 부산광역시 중구 용두산길 37-55 (광복동2가 1-2)</li>
                            <li>주차 | 가능</li>
                            <li>취급메뉴 | </li>
                        </ul>
                    </section>
                    <section>
                        <ul>
                            <li>홈페이지 | 인스타그램(@busantower_official)</li>
                            <li>영업시간 | 평일, 주말 10:00-22:00</li>
                        </ul>
                    </section>
                </section>
            </section>

        </section>

      <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
    </main>
</body>
</html>