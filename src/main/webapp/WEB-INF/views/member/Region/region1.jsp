<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


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
                            <img src="${contextPath}/resources/images/Region/pet.jpg">
                        </section>
                        <section id="article">
                            <p>반려동물 동반여행</p>
                            <p>반려동물과 함께할 수 있는 여행지를 소개합니다!</p>
                        </section>
                    </section>
                    <section class="pic-area2">
                        <section id="pic">
                            <img src="${contextPath}/resources/images/Region/star.jpg">
                        </section>
                        <section id="article">
                            <p>한국 관광의 별</p>
                            <p>한 해 동안 가장 빛난 별을 찾아 소개합니다</p>
                        </section>
                    </section>
                    <section class="pic-area3">
                        <section id="pic">
                            <img src="${contextPath}/resources/images/Region/weekend.jpg">
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

           <hr>

           <section class="middle2">
            <section class="map-area">
                <img src="${contextPath}/resources/images/Region/map2.PNG">
                <span id="SEOUL" class="region"><a href="ctgr?ctgr=4&name=서울" style = "color:rgb(219, 157, 75)">서울</a></span>
                <span id="kW" class="region"><a href="ctgr?ctgr=8&name=강원도" style = "color:rgb(202, 73, 95)">강원도</a></span>
                <span id="JB" class="region"><a href="ctgr?ctgr=10&name=전라도" style = "color: rgb(136, 17, 136)">전라북도</a></span>
                <span id="JN" class="region"><a href="ctgr?ctgr=10&name=전라도" style = "color: #6d6565">전라남도</a></span>
                <span id="CB" class="region"><a href="ctgr?ctgr=9&name=충청도" style = "color:rgb(87, 82, 82)">충청북도</a></span>
                <span id="CN" class="region"><a href="ctgr?ctgr=9&name=충청도" style = "color: rgb(84, 154, 182)">충청남도</a></span>
                <span id="kB" class="region"><a href="ctgr?ctgr=11&name=경상도" style = "color:green">경상북도</a></span>
                <span id="kN" class="region"><a href="ctgr?ctgr=5&name=경상도" style = "color: rgb(207, 80, 207)">경상남도</a></span>
                <span id="JJ" class="region"><a href="ctgr?ctgr=12&name=제주도" style = "color: rgb(4, 48, 10)">제주</a></span>
            </section>
                </section>
            </section>
        </section>   
        
    </main>
    
    <jsp:include page="/WEB-INF/views/common/footer.jsp"/>

    <script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>

    <script src="${contextPath}/resources/js/Region/region1.js"></script>
</body>
</html>