<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="categoryNo" value="${list.categoryNo}"/>
<c:set var="categoryName" value="${list.categoryName}"/>
<c:set var="categorySubNo" value="${list.categorySubNo}"/>

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
                <span id="SEOUL" class="region">서울 <input type="hidden" value="4"> </span>
                <span id="kW" class="region" value="8">강원도 <input type="hidden" value="8" name="region-type"> </span>
                <span id="JB" class="region" value="10">전라북도 <input type="hidden" value="10" name="region-type"> </span>
                <span id="JN" class="region" value="10">전라남도 <input type="hidden" value="10" name="region-type"> </span>
                <span id="CB" class="region" value="9">충청북도 <input type="hidden" value="9" name="region-type"> </span>
                <span id="CN" class="region" value="9">충청남도 <input type="hidden" value="9" name="region-type"> </span>
                <span id="kB" class="region" value="11">경상북도 <input type="hidden" value="11" name="region-type"> </span>
                <span id="kN" class="region" value="11">경상남도 <input type="hidden" value="11" name="region-type"> </span>
                <span id="JJ" class="region" value="12">제주 <input type="hidden" value="12" name="region-type"> </span>
            </section>
            <section id="info-area">
                    <section id="information">
                         <div id="info2"></div> 
                     </section>
                     <section class="detail-area">
                        <a href="detail" id="detail-area2">
                            <div class="detail">
                                <div>
                                    <img src="${contextPath}/resources/images/Region/star.jpg">
                                </div>
                                <div class="font">강남구</div>
                            </div>

                            <div class="detail">
                                <div>
                                    <img src="${contextPath}/resources/images/Region/star.jpg">
                                </div>
                                <div class="font">강동구</div>
                            </div>

                            <div class="detail">
                                <div>
                                    <img src="${contextPath}/resources/images/Region/star.jpg">
                                </div>
                                <div class="font">강북구</div>
                            </div>

                            <div class="detail">
                                <div>
                                    <img src="${contextPath}/resources/images/Region/star.jpg">
                                </div>
                                <div class="font">강서구</div>
                            </div>

                            <div class="detail">
                                <div>
                                    <img src="${contextPath}/resources/images/Region/star.jpg">
                                </div>
                                <div class="font">중구</div>
                            </div>
                        </a>
                    </section>

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