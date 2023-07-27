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
                    <b>여진구의 테마 추천!</b>
                </section>
                <br><br>
                <section class="container5">
                    <section class="flex-container1">
                        <div class="item" id="photo">
                            <img src="${contextPath}/resources/images/ThemeBoard/main/autumnLOVE.jpg">
                                <strong><h2>가을 타는 당신!</h2></strong>
                                <br>
                                <b>여행지 이름</b>
                                <br>
                                <b>여행지 주소</b>
                        </div>
                        <div class="item" id="photo">
                            <img src="${contextPath}/resources/images/ThemeBoard/main/coupleTrip.jpg">
                                <strong><h2>연인과 함께!</h2></strong>
                                <br>
                                <b>여행지 이름</b>
                                <br>
                                <b>여행지 주소</b>
                        </div>
                        <div class="item" id="photo">
                            <img src="${contextPath}/resources/images/ThemeBoard/main/oldPalace.jpg">
                                <strong><h2>역사.. 좋아하세요?</h2></strong>
                                <br>
                                <b>여행지 이름</b>
                                <br>
                                <b>여행지 주소</b>
                        </div>
                        <div class="item" id="photo">
                            <img src="${contextPath}/resources/images/ThemeBoard/main/Disneyland.jpg">
                                <strong><h2>5월은 가정의날!</h2></strong>
                                <br>
                                <b>여행지 이름</b>
                                <br>
                                <b>여행지 주소</b>
                        </div>
                    </section>

                    
                </section>

                <br><br><br>
                <section class="container6">
                    <section class="container6-1">
                        <b>키워드 & 해쉬태그</b>
                    </section>
                    <section class="flex-container4">
                        <div class="item3" id="spring">
                            #봄
                        </div>
                        <div class="item3" id="childday">
                            #어린이날
                        </div>
                        <div class="item3" id="festival">
                            #축제
                        </div>
                        <div class="item3" id="flower">
                            #벚꽃
                        </div>
                        <div class="item3" id="bestfood">
                            #맛집
                        </div>
                        <div class="item3" id="activity">
                            #액티비티
                        </div>
                        <div class="item3" id="ocean">
                            #바다
                        </div>

                    </section>


                    <section class="flex-container5">
                        <div class="item3" id="mountain">
                            #산
                        </div>
                        <div class="item3" id="couple">
                            #커플
                        </div>
                        <div class="item3" id="single">
                            #싱글
                        </div>
                        <div class="item3" id="bunggle">
                            #벙글
                        </div>
                        <div class="item3" id="family">
                            #가족
                        </div>
                        <div class="item3" id="rain">
                            #비
                        </div>
                        <div class="item3" id="train">
                            #기차
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