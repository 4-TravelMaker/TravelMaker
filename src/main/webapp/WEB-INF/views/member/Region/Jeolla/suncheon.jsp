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
                <p>순천만국제정원박람회</p>
                <p>전라남도 순천시</p>
                <mark>국가정원 식물원과 정원의 미래를 체험할 수 있는 시크릿가든</mark>
                <hr>
            </section>
            <section class="like">
                <p>좋아요</p>
                <section>
                     <img src="${contextPath}/resources/images/Region/Jeolla/suncheon.jpg" width="550px" height="370px">
                </section>
            </section>
            <section class="article">
                <p>상세정보</p>
                <hr>
                <p>순천만국가정원에서는 2023년 4월 1일부터 10월 31일까지 '정원에 삽니다'라는 주제로 순천만국제정원박람회가 진행됩니다. 
                   이번 박람회에서는 국가정원 식물원과 정원의 미래를 체험할 수 있는 시크릿가든을 새롭게 선보이는데요. 이곳에서는 빙하정원, 에너지정원, 햇빛정원, 식물극장 등 이색 체험을 즐길 수 있습니다. 
                   국가정원과 도심을 잇는 동천 백길도 복원되었으니 정원드림호를 타고 동천강의 야간 수변 경관까지 즐겨보세요.</p>
            </section>
            <section class="map">
                <section id="map-area">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3271.0872472832584!2d127.50659227711765!3d34.929348770907836!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x356e08d4d3d1ec8b%3A0xa382c2c220219851!2z7Iic7LKc66eM6rWt6rCA7KCV7JuQ!5e0!3m2!1sko!2skr!4v1690738057040!5m2!1sko!2skr" width="1000" height="400" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
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