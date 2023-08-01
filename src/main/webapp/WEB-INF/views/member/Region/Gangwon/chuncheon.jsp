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
                <p>감자 아일랜드</p>
                <p>강원도 춘천시</p>
                <mark>감자로 맥주를 빚는 개성 만점 브루어리</mark>
                <hr>
            </section>
            <section class="like">
                <p>좋아요</p>
                <section>
                     <img src="${contextPath}/resources/images/Region/Gangwon/chuncheon.jpg" width="550px" height="370px">
                </section>
            </section>
            <section class="article">
                <p>상세정보</p>
                <hr>
                <p>춘천의 청년들이 감자로 맥주를 만들었다. 맥주란 자고로 보리, 그러니까 맥아가 주원료 아니던가. 술 빚는 법도 잘 몰랐던 두 청년의 용기와 실행력, 그리고 궁금한 것은 참지 않는 양조사의 호기심이 만나 감자 맥주가 탄생했다. 
                   구슬땀으로 완성된 청년들의 노력을 확인해보자. 우리가 꼭 맛봐야 할 감자 아일랜드의 대표 맥주는 아메리칸 스타일의 포타페일에일이다. 새콤하면서도 탄산이 가득해 누구나 부담 없이 즐길 수 있다. 생산량이 한정되어 있으니 절대 놓치지 말 것.</p>
            </section>
            <section class="map">
                <section id="map-area">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d100735.62473378183!2d127.59870664335936!3d37.90733680000002!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3562ef87b95269dd%3A0xa8dd2d514df21551!2z6rCQ7J6Q7JWE7J28656c65OcIGdhbWphaXNsYW5k!5e0!3m2!1sko!2skr!4v1690734361053!5m2!1sko!2skr" width="1000" height="400" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
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