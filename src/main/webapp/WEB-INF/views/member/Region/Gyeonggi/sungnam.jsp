<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TravelMaker</title>
    <link rel="shortcut icon" type="image/x-icon" href="${contextPath}/resources/images/small_logo.png">


    <link rel="stylesheet" href="${contextPath}/resources/css/Region/region4.css">
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
                <p>모란장/모란민속시장(4,9일)</p>
                <p>경기 성남시</p>
                <mark>돼지부속 가게가 밀집되어 있는 역사깊은 장</mark>
                <hr>
            </section>
            <section class="like">
                <p>좋아요</p>
                <section>
                     <img src="${contextPath}/resources/images/RegionDetail1/sungnam.jpg" width="550px" height="370px">
                </section>
            </section>
            <section class="article">
                <p>상세정보</p>
                <hr>
                <p>모란민속시장은 성남시 중원구 성남동 일원에서 개설되는 정기시장으로 전국적인 규모를 자랑하고 있다. 모란장 또는 모란민속5일장 등 여러 이름으로 불리고 있으며, 모란민속시장의 장날은 매월 끝자리가 4, 9일인 날이다.</p>
             	
				<p>모란민속5일장이 열리는 4일, 9일에는 시끌벅적한 장이 펼쳐진다. 큰길 건너 건물 옥상에서 내려다보면 형형색색 파라솔에 뒤덮인 모란민속5일장의 모습이 한눈에 들어온다.</p>
            </section>
            <section class="map">
                <section id="map-area">
                	<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3168.3357016549267!2d127.12233909678957!3d37.42917360000001!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca8804f30f41d%3A0x74e962fa9dd889!2z66qo656A66-87IaNNeydvOyepSjrqqjrnoDsi5zsnqUp!5e0!3m2!1sko!2skr!4v1690631520500!5m2!1sko!2skr" width="1000" height="400" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </section>
                <section class="map1-1">
                    <section>
                        <ul>
                            <li>문의 및 안내  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  031-721-9905</li>
                             <br>
                            <li>주소  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;경기도 성남시 중원구 둔촌대로 68</li>
                            <br>
                            <li>주차  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;주차 가능 (단, 5일장에는 주차 불가)</li>
                            <br>
                            <li>보조견동반 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;동반가능</li>
                        </ul>
                    </section>
                    <section>
                        <ul>
                            <li>홈페이지 https://shopping.naver.com/market/traditionalmarket?stored=100913804</li>
                            <br>
                            <li>영업시간 &nbsp;&nbsp;09:00 ~ 19:00</li>
                        </ul>
                    </section>
                </section>
            </section>

        </section>

      <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
    </main>
</body>
</html>