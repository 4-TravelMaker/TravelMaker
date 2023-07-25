<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TravelMaker</title>
    <link rel="shortcut icon" type="image/x-icon" href="image/small_logo.png">

    <link rel="stylesheet" href="${contextPath}/resources/css/Region/region1.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/main-style.css">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/ef988defcf.js" crossorigin="anonymous"></script>
</head>
<body>
    <main>
      	<jsp:include page="/WEB-INF/views/common/header.jsp"/>

        <section class="main-area">
            <section class="middle1">
              <section class="photo">
                  <section id="button">
                  </section>
                  <section class="pic-area">
                    <section class="pic-area1">
                        <section id="pic">
                            <img src="#">
                        </section>
                        <section id="article">
                            <p>여행이 있는 주말</p>
                            <p>매월 마지막 주말은 일상에서 벗어나 여행을 떠나보세요!</p>
                        </section>
                    </section>
                    <section class="pic-area2">
                        <section id="pic">
                            <img src="#">
                        </section>
                        <section id="article">
                            <p>여행이 있는 주말</p>
                            <p>매월 마지막 주말은 일상에서 벗어나 여행을 떠나보세요!</p>
                        </section>
                    </section>
                    <section class="pic-area3">
                        <section id="pic">
                            <img src="#">
                        </section>
                        <section id="article">
                            <p>여행이 있는 주말</p>
                            <p>매월 마지막 주말은 일상에서 벗어나 여행을 떠나보세요!</p>
                        </section>
                    </section>
              </section>
              <section id="button">
              </section>
              </section>
           </section>
           
           
           <section class="middle2">
            <section class="map-area">
                <img src="${contextPath}/resources/images/Region/map2.PNG">
                <span id="SEOUL" class="region">서울</span>
                <span id="kW" class="region">강원도</span>
                <span id="JB" class="region">전라북도</span>
                <span id="JN" class="region">전라남도</span>
                <span id="CB" class="region">충청북도</span>
                <span id="CN" class="region">충청남도</span>
                <span id="kB" class="region">경상북도</span>
                <span id="kN" class="region">경상남도</span>
                <span id="JJ" class="region">제주</span>
            </section>
            <section class="info-area">

                    <section id="information">
                         <div id="info2" >여행지정보</div>
                     </section>
                     <section class="photobox1">
                        <section class="photo">
                            <section>사진</section>
                            <section>정보</section>
                        </section>
                        <section class="photo">
                            <section>사진</section>
                            <section>정보</section>
                        </section>
                        <section class="photo">
                            <section>사진</section>
                            <section>정보</section>
                        </section>
                    </section>

                </section>
                </section>
            </section>
        </section>   
        
    </main>
    
    <jsp:include page="/WEB-INF/views/common/footer.jsp"/>

    <script src="${contextPath}/resources/js/Region/region1.js"></script>
</body>
</html>