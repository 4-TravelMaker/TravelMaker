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
                <p>팬스타부산주말원나잇크루즈</p>
                <p>부산 동구</p>
                <mark>국내 연안크루즈 상품</mark>
                <hr>
            </section>
            <section class="like">
                <p>좋아요</p>
                <section>
                     <img src="${contextPath}/resources/images/RegionDetail/busanDongGu.bmp" width="550px" height="370px">
                </section>
            </section>
            <section class="article">
                <p>상세정보</p>
                <hr>
                <p>대한민국 국적 1호 크루즈페리선인 팬스타드림호(2만1,688톤)를 활용한 국내 연안크루즈 상품으로 2004년 첫 선을 보인 ‘부산항 주말 원나잇크루즈’는 연평균 1만명이 넘는 승객이 이용하는 부산의 대표적 해양관광 명물이다. 2016년 4월부터는 매월 세 번째 주말에 국내 연안을 넘어 대마도 히타카츠항을 근접 조망 후 부산으로 돌아와 기존 원나잇크루즈 일정을 소화하는 ‘현해탄 원나잇크루즈’ 상품을 출시해 선내 면세쇼핑을 즐기는 국제크루즈 고객들을 유치하고 있다. 고급 뷔페와 다양한 문화공연, 레이저쇼, 불꽃쇼 등을 한 자리에서 즐기며 품격있고 실속있는 크루즈 여행으로 자리 매김했다.</p>
            </section>
            <section class="map">
                <section id="map-area">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6527.228068193642!2d129.0454893208919!3d35.1163474527508!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3568e96e50379737%3A0xcfd075b50e81fa3f!2z7Yys7Iqk7YOA7YGs66Oo7KaI!5e0!3m2!1sko!2skr!4v1690762088875!5m2!1sko!2skr" width="1000" height="400" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>                </section>
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