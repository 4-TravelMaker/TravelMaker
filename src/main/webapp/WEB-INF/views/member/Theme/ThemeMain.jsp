<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- 문자열 관련 함수(메소드) 제공 JSTL (EL 형식으로 작성) --%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TravelMaker</title>
    <link rel="shortcut icon" type="image/x-icon" href="image/small_logo.png">
    <link rel="stylesheet" href="${contextPath}/resources/css/Theme/ThemeMain.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
    <script src="https://unpkg.com/embla-carousel/embla-carousel.umd.js"></script>
    <script src="https://unpkg.com/embla-carousel-autoplay/embla-carousel-autoplay.umd.js"></script>

</head>
<body>
    <main>
        <jsp:include page="/WEB-INF/views/common/header.jsp"/>

       
        <section id="middle">
           
            <section class="container">
                <section class="container0"></section>
            
                <section class="container1">
                    <div class="embla" id="slideShow">
                        
                            <div class="embla__container">
                                <div class="embla__slide">
                                    <img src="${contextPath}/resources/images/ThemeBoard/main/ThemeMain1.png" alt="Main1">                                    
                                </div>
                                <div class="embla__slide">
                                    <img src="${contextPath}/resources/images/ThemeBoard/main/ThemeMain2.png" alt="Main2">
                                </div>
                                <div class="embla__slide">
                                    <img src="${contextPath}/resources/images/ThemeBoard/main/ThemeMain3.png" alt="Main3">
                                </div>
                                <div class="embla__slide">
                                    <img src="${contextPath}/resources/images/ThemeBoard/main/ThemeMain4.png" alt="Main4">
                                </div>
                            </div>
                        
                        <button class="embla__prev">Prev</button>
                        <button class="embla__next">Next</button>
                    </div>        
                </section>
            
                <section class="container2"></section>
                <section class="container3"><hr></section>
                <br>
                <section class="container4">
                    <b>Travel Maker의 테마 추천!</b>
                </section>
                <br><br>
                <section class="container5">
                    <section class="flex-container1">
                        <div class="item" id="photo">
                            <a href="http://localhost:8080/TravelMaker/theme/pet?type=2">
                                <img src="${contextPath}/resources/images/ThemeBoard/main/petMain.jpg">
                                <strong><h2>반려견과 함께!</h2></strong>
                            </a>
                        </div>
                        <div class="item" id="photo">
                           <a href="http://localhost:8080/TravelMaker/theme/coupleTrip?type=2">
                            <img src="${contextPath}/resources/images/ThemeBoard/main/coupleTrip.jpg">
                            <strong><h2>연인과 함께!</h2></strong>
                        </a>
                                
                        </div>
                        <div class="item" id="photo">
                            <a href="http://localhost:8080/TravelMaker/theme/trainTrip?type=2">
                                <img src="${contextPath}/resources/images/ThemeBoard/main/TrainTripMain.jpg">
                                <strong><h2>칙칙폭폭! 기차여행!</h2></strong>
                            </a>
                        </div>
                        <div class="item" id="photo">
                            <a href="http://localhost:8080/TravelMaker/theme/familyTrip?type=2">
                                <img src="${contextPath}/resources/images/ThemeBoard/main/FamilyTripMain.jpg">
                                <strong><h2>가족과 함께!</h2></strong>
                            </a>
                        </div>
                    </section>

                    
                </section>

                
                <section class="container6">
                    <section class="container6-1">
                        <b>키워드 & 해쉬태그</b>
                    </section>
                    <section class="flex-container4">
                        <div class="item3" id="spring">
                            <a href="activity?type=2">#액티비티</a>
                        </div>
                        <div class="item3" id="childday">
                            <a href="famousRestaurant?type=2">#맛집</a>
                        </div>
                        <div class="item3" id="festival">
                            <a href="cafe?type=2">#카페</a>
                        </div>
                        <div class="item3" id="flower">
                            <a href="coupleTrip?type=2">#커플여행</a>
                        </div>                        
                    </section>


                    <section class="flex-container5">
                        <div class="item3" id="mountain">
                            <a href="camPing?type=2">#캠핑</a>
                        </div>
                        <div class="item3" id="couple">
                            <a href="pet?type=2">#반려견동반</a>
                        </div>
                        <div class="item3" id="single">
                            <a href="trainTrip?type=2">#기차여행</a>
                        </div>
                        <div class="item3" id="bunggle">
                            <a href="familyTrip?type=2">#가족여행</a>
                        </div>
                    </section>
                </section>
            </section>
            

        </section>

        <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
    </main>

    <script type="text/javascript">
        var emblaNode = document.querySelector('.embla')
        var options = { loop: false }
        var plugins = [EmblaCarouselAutoplay()] // Plugins
      
        var embla = EmblaCarousel(emblaNode, options, plugins)
        
       

    
    </script>

    

      
   
</body>
</html>