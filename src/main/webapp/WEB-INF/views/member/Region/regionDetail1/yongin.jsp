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
                <p>에버랜드</p>
                <p>경기 용인시</p>
                <mark>다채로운 축제와 어트랙션,동물과 식물 가든으로 구성된 글로벌 테마파크</mark>
                <hr>
            </section>
            <section class="like">
                <p>좋아요</p>
                <section>
                     <img src="${contextPath}/resources/images/RegionDetail1/yongin.jpg" width="550px" height="370px">
                </section>
            </section>
            <section class="article">
                <p>상세정보</p>
                <hr>
				<p>1년 365일, 계절별 다채롭게 펼쳐지는 축제와 어트랙션, 동물, 식물 등 다양한 시설로 즐거운 휴식과 기쁨을 선사하는 테마파크이다. 5개 테마존의 40여종의 최신 어트랙션은 짜릿한 스릴을 선사하며 특히 우든코스터 T Express는 롤러코스터 마니아들에게 사랑받고 있다. 파크 곳곳에서 펼쳐지는 다양한 무대공연, 멀티미디어 불꽃쇼 등 초대형 엔터테인먼트가 날마다 새로운 즐거움을 더하며, 아시아 동물원 최초로 AZA (미국 동물원 수족관협회) 인증을 받은 에버랜드 동물원 ‘주토피아’에서는 사파리월드, 로스트밸리 등 수준높은 동물 생태 전시를 경험할 수 있다. 또한 40여년간 한국의 꽃 축제와 정원 문화를 선도해 온 에버랜드에서 튤립, 장미 등 아름다운 테마정원과 오감만족의 전시, 체험도 만나볼 수 있다.
				</p>             	
				
            </section>
            <section class="map">
                <section id="map-area">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3174.051621187405!2d127.1999914751871!3d37.29391037211053!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357b5403ce34d773%3A0x1fa18ab619238098!2z7JeQ67KE656c65Oc!5e0!3m2!1sko!2skr!4v1690639491194!5m2!1sko!2skr" width="1000" height="400" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </section>
                <section class="map1-1">
                    <section>
                        <ul>
                            <li>문의 및 안내  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 	031-320-5000</li>
                             <br>
                            <li>주소  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;경기도 용인시 처인구 포곡읍 에버랜드로 199</li>
                            <br>
                            <li>주차  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;있음 (정문 유료주차장, 외곽 무료 주차장)</li>
                            <br>
                            <li>접근로 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;출입구까지 턱이 없어 휠체어 접근 가능함</li>
                        </ul>
                    </section>
                    <section>
                        <ul>
                            <li>홈페이지 		&nbsp;&nbsp;&nbsp;&nbsp;http://www.everland.com</li>
                            <br>
                            <li>이용시간 &nbsp;&nbsp;	※월별 이용시간 홈페이지 참고</li>
                            <br>
                            <li>휴일 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	연중무휴</li>
                           
                        </ul>
                    </section>
                </section>
            </section>

        </section>

      <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
    </main>
</body>
</html>