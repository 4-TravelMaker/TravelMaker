<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>아라천 디자인 큐브</title>
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
                <p>아라천 디자인 큐브</p>
                <p>인천 계양구</p>
                <mark>다양한 전시를 즐길 수 있는 복합 문화 공간</mark>
                <hr>
            </section>
            <section class="like">
                <p>좋아요</p>
                <section>
                     <img src="${contextPath}/resources/images/Region/Incheon/gyeyang-gu.jpg" width="550px" height="370px">
                </section>
            </section>
            <section class="article">
                <p>상세정보</p>
                <hr>
                <p>복합문화센터 아라천 디자인큐브 전시공간에 지역문화 발전을 위해 역량 있는 단체, 예술인, 생활문화 동아리의 활동 결과물 전시 기회를 제공하고 아라뱃길을 찾는 시민들에게 다양하고 수준 높은 전시 관람 기회를 제공하고 있다.</p>
            </section>
            <section class="map">
                <section id="map-area">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3162.1678467263837!2d126.73686017540966!3d37.57466512366262!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357c8307518cc541%3A0xf82a0c4028581a4!2z7J247LKc6rSR7Jet7IucIOqzhOyWkeq1rCDslYTrnbzroZwgNTQ4IDUw!5e0!3m2!1sko!2skr!4v1690728254280!5m2!1sko!2skr" width="1000" height="400" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </section>
                <section class="map1-1">
                    <section>
                        <ul>
                            <li>문의 및 안내 | 032-542-5755</li>
                            <li>주소 | 인천 계양구 아라로 548 장기동50</li>
                            <li>주차 | 가능</li>
                            <li>취급메뉴 | </li>
                        </ul>
                    </section>
                    <section>
                        <ul>
                            <li>홈페이지 | https://band.us/band/83336316</li>
                            <li>영업시간 | 수-일 09:00 - 18:00 (매주 월, 화 정기휴무)</li>
                        </ul>
                    </section>
                </section>
            </section>

        </section>

      <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
    </main>
</body>
</html>