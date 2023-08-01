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
                <p>천안타운홀</p>
                <p>충청남도 천안시</p>
                <mark>요즘 핫한 드론뷰 카페</mark>
                <hr>
            </section>
            <section class="like">
                <p>좋아요</p>
                <section>
                     <img src="${contextPath}/resources/images/Region/Chungcheong/cheonan.jpg" width="550px" height="370px">
                </section>
            </section>
            <section class="article">
                <p>상세정보</p>
                <hr>
                <p>천안역 인근에 시내를 한눈에 내려다 볼 수 있는 초고층 카페가 있다. 47층(204m) 높이를 자랑하는 천안타운홀이다. 천안시가 주상복합 아파트 꼭대기 두 개 층을 직영 카페 겸 갤러리로 조성했다. 
                    천안타운홀의 가장 큰 특징은 카페 외벽이 전부 통유리라는 점이다. 덕분에 시내 풍경을 파노라마로 조망할 수 있다. 
                    오랫동안 원도심을 지켜온 천안역부터 낡은 상가, 새로 지은 아파트, 천안 8경 중 하나인 천호지, 경부고속도로까지 셀 수 없이 많은 스폿들이 눈에 담긴다. 
                    해가 뜨고 질 때까지 시시각각 변하는 하늘을 원하는 방향에서 감상할 수 있다는 점도 매력적이다.</p>
            </section>
            <section class="map">
                <section id="map-area">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3194.463704812436!2d127.14818061744384!3d36.8074068!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357b29b345e749ad%3A0x152b64092e53226a!2z7LKc7JWI7YOA7Jq07ZmA7Lm07Y6Y!5e0!3m2!1sko!2skr!4v1690736064067!5m2!1sko!2skr" width="1000" height="400" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
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