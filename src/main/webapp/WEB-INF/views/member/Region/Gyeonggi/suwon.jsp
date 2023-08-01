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
                <p>수원화성[유네스코 세계문화유산]</p>
                <p>경기 수원시</p>
                <mark>실용적인 구조로 되어있는 동양 성곽의 백미</mark>
                <hr>
            </section>
            <section class="like">
                <p>좋아요</p>
                <section>
                     <img src="${contextPath}/resources/images/RegionDetail1/suwon.jpg" width="550px" height="370px">
                </section>
            </section>
            <section class="article">
                <p>상세정보</p>
                <hr>
             	<p>수원화성은 정조의 효심이 축성의 근본이 되었을 뿐만 아니라 당쟁에 의한 당파 정치 근절과 강력한 왕도정치의 실현을 위한 원대한 정치적 포부가 담긴 정치 구상의 중심지로 지어진 것이며, 수도 남쪽의 국방 요새로 활용하기 위한 것이었습니다.
                    정조 18년(1794년)에 축성공사를 시작, 2년 뒤인 1796년에 완공했으며 정약용이 성을 설계하였습니다.
                    수원화성은 거중기, 활차, 녹로 등 신기재의 발명과 활용, 동서양 축성술을 집약한 축성방법 등 18세기 과학과 건축, 예술을 살필 수 있는 대한민국 성곽 건축사상 가장 독보적인 건축물로 평가받고 있습니다.
                    「수원화성」은 방어 기능과 성벽안에 갖추어진 4개의 성문을 비롯해 각기 다른 모양과 특성을 지닌 건축물의 가치를 인정받아 1997년에 유네스코 세계문화유산으로 지정되었습니다.
                    ‘대한민국 으뜸 관광 명소’, ‘CNN선정 한국에서 가봐야 할 아름다운 곳 50곳’, 2012 한국관광을 빛낸 ‘한국관광의 별’ 로 선정되는 등 한국 전통역사문화의 아이콘으로 떠오르며 세계적인 관광명소로 거듭나고 있습니다.</p>
				
            </section>
            <section class="map">
                <section id="map-area">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3174.3710869552124!2d127.00822607518666!3d37.286338072112464!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357b5cca0fa82ebb%3A0x1326e46ba3ed1641!2z7IiY7JuQ7ZmU7ISx!5e0!3m2!1sko!2skr!4v1690636671840!5m2!1sko!2skr" width="1000" height="400" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </section>
                <section class="map1-1">
                    <section>
                        <ul>
                            <li>문의 및 안내  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  	031-290-3600</li>
                             <br>
                            <li>주소  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;경기도 수원시 장안구 영화동</li>
                            <br>
                            <li>주차  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;주차 가능</li>
                            <br>
                            <li>접근로 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;출입구까지 턱이 없어 휠체어 접근 가능함</li>
                        </ul>
                    </section>
                    <section>
                        <ul>
                            <li>홈페이지 	&nbsp;&nbsp http://www.swcf.or.kr</li>
                            <br>
                            <li>이용시간 &nbsp;&nbsp;	09:00 ~ 18:00</li>
                        </ul>
                    </section>
                </section>
            </section>

        </section>

      <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
    </main>
</body>
</html>