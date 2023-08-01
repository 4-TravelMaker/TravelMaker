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
                <p>익산농협 생크림 찹쌀떡</p>
                <p>전라북도 익산시</p>
                <mark>새벽 3시 ‘떡켓팅’의 주인공</mark>
                <hr>
            </section>
            <section class="like">
                <section>
                     <img src="${contextPath}/resources/images/Region/Jeolla/iksan.jpg" width="550px" height="370px">
                </section>
            </section>
            <section class="article">
                <p>상세정보</p>
                <hr>
                <p>처음 익산농협 생크림 찹쌀떡 이야기를 접한 나의 반응이다. 유명한 파티쉐가 만든 떡도 아닌데 새벽부터 줄을 서서 사 먹어야 한다는 게 도무지 믿기지 않았다. 
                   하지만 시간이 갈수록 아이스크림처럼 달콤하고 찹쌀떡처럼 쫄깃하다는 그 맛이 궁금해지기 시작했다. 홀린 듯 익산농협 떡 방앗간 오픈 채팅방에 접속했고, 알토란같은 정보를 수집한 끝에 익산으로 떠나게 되었다. 
                   무려 새벽 3시에 말이다. 오전 8시 30분이 되자 농협 문이 열렸다. 결국 오픈 10분 만에 그 많은 찹쌀떡이 전부 매진됐다. 상온에서 10분간 해동시킨 후 먹어보았더니 그야말로 ‘대박’이다. 
                   겉은 쫀득쫀득하고 안의 생크림은 달콤하면서 부드러워 입에서 사르르 녹아내렸다. 흑임자와 초콜릿은 그 부드러운 질감에 고소한 맛과 달콤한 맛이 강조된 느낌이다.</p>
            </section>
            <section class="map">
                <section id="map-area">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d12922.151335853387!2d126.96015758209755!3d35.93381098434659!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x35703f871157a7b1%3A0xb4e433312f268476!2z7J217IKw64aN7ZiR65ah67Cp7JWX6rCE!5e0!3m2!1sko!2skr!4v1690737599674!5m2!1sko!2skr" width="1000" height="400" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
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