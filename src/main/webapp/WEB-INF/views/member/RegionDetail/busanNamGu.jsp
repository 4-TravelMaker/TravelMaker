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
                <p>오륙도 스카이워크</p>
                <p>부산 남구</p>
                <mark>끝없이 펼쳐진 바다 위를 걷는 기분!</mark>
                <hr>
            </section>
            <section class="like">
                <p>좋아요</p>
                <section>
                     <img src="${contextPath}/resources/images/RegionDetail/busanNamGu.jpg" width="550px" height="370px">
                </section>
            </section>
            <section class="article">
                <p>상세정보</p>
                <hr>
                <p>오륙도 스카이워크의 옛 지명은 “승두말”이다. 승두말은 말안장처럼 생겼다고 「승두마」라고 부르는 것이 승두말로 되었으며 해녀들과 지역주민들은 「잘록개」라고 불렀다. 바다를 연모하는 승두말이 오륙도 여섯섬을 차례대로 순산하고 나서 승두말의 불룩했던 부분이 잘록하게 들어가 선창나루와 어귀의 언덕을 만들었다는 것이다. 동해와 남해의 경계지점이기도 한 이곳 승두말에 2012년 9월 12일에 착공하여 2013년 10월 18일 개장하면서 “하늘위를 걷는다”는 의미를 담아 “오륙도 스카이워크”라 이름하였다.</p>
            </section>
            <section class="map">
                <section id="map-area">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3264.2414637199436!2d129.11952998760742!3d35.1006809914753!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3568edc80add1255%3A0x199dcb0499a6db71!2z7Jik66WZ64-EIOyKpOy5tOydtOybjO2BrA!5e0!3m2!1sko!2skr!4v1690761998362!5m2!1sko!2skr" width="1000" height="400" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>                </section>
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