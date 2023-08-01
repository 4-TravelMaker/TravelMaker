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
                <p>제천 용추폭포 유리전망대</p>
                <p>충청북도 제천시</p>
                <mark>폭포 위를 걷는 짜릿함</mark>
                <hr>
            </section>
            <section class="like">
                <p>좋아요</p>
                <section>
                     <img src="${contextPath}/resources/images/Region/Chungcheong/jecheon.jpg" width="550px" height="370px">
                </section>
            </section>
            <section class="article">
                <p>상세정보</p>
                <hr>
                <p>제천 의림지(명승 20호)에 새 명물이 등장했다. 마치 폭포 위에 서 있는 듯 짜릿함을 안겨주는 용추폭포 유리전망대가 그것이다.
                   의림지는 역사가 깊은 저수지로, 2020년 8월 29일 일반에 개방한 유리전망대의 특별한 재미가 더해져 이곳을 찾는 발길이 늘어날 전망이다.
                   유리전망대는 용추폭포 위에 설치한 인도교로, 발아래 장쾌하게 쏟아지는 폭포가 내려다보인다. 시원하게 쏟아져 내리는 물을 바라보면 켜켜이 쌓인 스트레스가 포말과 함께 사라지는 기분이다. 
                   몇 걸음 걷지 않아 마치 폭포 위를 산책하듯 아찔하다. 폭포는 아래에서 바라보는 경우가 일반적이라, 발아래 떨어지는 물줄기를 보는 느낌이 색다르다.</p>
            </section>
            <section class="map">
                <section id="map-area">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3179.1840358620657!2d128.2059363770701!3d37.17209714664562!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x356391f26a5583bf%3A0x5bc4d3bed7173309!2z7Jqp7LaU7Y-t7Y-sIOycoOumrOyghOunneuMgA!5e0!3m2!1sko!2skr!4v1690735584671!5m2!1sko!2skr" width="1000" height="400" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
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