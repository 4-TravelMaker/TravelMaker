<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>빅토리아 베이커리 가든</title>
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
                <p>빅토리아 베이커리 가든</p>
                <p>부산 서구</p>
                <mark>유럽 감성 가득한 베이커리 맛집</mark>
                <hr>
            </section>
            <section class="like">
                <p>좋아요</p>
                <section>
                     <img src="${contextPath}/resources/images/Region/Busan/seo-gu.jpg" width="550px" height="370px">
                </section>
            </section>
            <section class="article">
                <p>상세정보</p>
                <hr>
                <p>부산 서구 대신동 꽃마을에 위치한 빅토리아 베이커리 가든은 유럽풍 인테리어로 관광객들의 마음을 사로잡고 있다. 꽃 향기 가득한 정원 속에서 30년 경력의 파티시에가 만드는 다양한 종류의 제과, 제빵을 맛본다면 또 다시 이곳을 찾아오게 될 것이다.</p>
            </section>
            <section class="map">
                <section id="map-area">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d26104.963003504778!2d129.00867723366298!3d35.12866946983557!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3568ebd82e61972d%3A0xa8508425e802042c!2z67mF7Yag66as7JWEIOuyoOydtOy7pOumrCDqsIDrk6A!5e0!3m2!1sko!2skr!4v1690725885262!5m2!1sko!2skr" width="1000" height="400" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </section>
                <section class="map1-1">
                    <section>
                        <ul>
                            <li>문의 및 안내 | 070-4414-1177</li>
                            <li>주소 | 부산광역시 서구 엄광산로 33 빅토리아베이커리가든</li>
                            <li>주차 | 가능</li>
                            <li>취급메뉴 | 에스프레소 베리꼼빠냐 5,000원 / 에스프레소 4,500원</li>
                        </ul>
                    </section>
                    <section>
                        <ul>
                            <li>홈페이지 | 인스타그램(@victoria_bakery_garden)</li>
                            <li>영업시간 | 평일, 주말 08:00 - 20:00</li>
                        </ul>
                    </section>
                </section>
            </section>

        </section>

      <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
    </main>
</body>
</html>