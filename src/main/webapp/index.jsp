<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TravelMaker</title>
    <script src="https://unpkg.com/embla-carousel/embla-carousel.umd.js"></script>
    <script src="https://unpkg.com/embla-carousel-autoplay/embla-carousel-autoplay.umd.js"></script>
    <link rel="shortcut icon" type="image/x-icon" href="${contextPath}/resources/images/Share/small_logo.png">
    <link rel="stylesheet" href="${contextPath}/resources/css/main-style.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/mainHomePage-style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/ef988defcf.js" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/263168e067.js" crossorigin="anonymous"></script>
</head>
<body>
    <main>
       <%--  ${loginMember} --%>
       
       <jsp:include page="/WEB-INF/views/common/header.jsp"/>
       
        <section id="middle">
           
            <section class="container">

                <section class="container0"></section>
                    <div class="temp2">
                        <button class="embla__prev2"><</button>  
                        <div class="embla">
                            <div class="viewport2">
                                <div class="embla__container">
                                    
                                    <div class="embla__slide">
                                        <a href="${contextPath}/theme/sunset" style="display:contents">
                                            <img src="resources/images/mainHome/sunset.png"  style="width:100%;height:100%;object-fit:contain;">
                                        </a>
                                    </div>
                                    <div class="embla__slide">
                                        <a href="${contextPath}/theme/nightVeiw" style="display:contents"> 
                                            <img src="resources/images/mainHome/incheon.png" style="width:100%;height:100%;object-fit:contain;">
                                        </a>
                                    </div>
                                    <div class="embla__slide">
                                        <a href="${contextPath}/theme/yeosuSea" style="display:contents">
                                            <img src="resources/images/mainHome/yeosu.png" style="width:100%;height:100%;object-fit:contain;">
                                        </a>
                                    </div>
                                    <div class="embla__slide">
                                        <a href="${contextPath}/theme/hamyang" style="display:contents">
                                            <img src="resources/images/mainHome/han-an.png" style="width:100%;height:100%;object-fit:contain;">
                                        </a>
                                    </div>
                                    <div class="embla__slide">
                                        <a href="${contextPath}/theme/suwon" style="display:contents">
                                            <img src="resources/images/mainHome/suwon.png" style="width:100%;height:100%;object-fit:contain;">
                                        </a>
                                    </div>
                                    <div class="embla__slide">
                                        <a href="${contextPath}/theme/flower" style="display: contents">
                                            <img src="resources/images/mainHome/summerflower.png" style="width:100%;height:100%;object-fit:contain;">
                                        </a>
                                    </div>
                                    <div class="embla__slide">
                                        <a href="${contextPath}/theme/chungnam" style="display: contents;">
                                            <img src="resources/images/mainHome/chungnam.png" style="width:100%;height:100%;object-fit:contain;">
                                        </a>
                                    </div>
                                    
                                </div> 
                            </div>       
                        </div>
                        <button class="embla__next2">></button>
                    </div>
                    <section class="container2">
                        
                        
                    </section>

                    <section class="container3"></section>
                    <br>

                    <section class="container4">
                        <b>이달의 베스트 여행지 Top 10</b>
                    </section>

                <section class="container5">
                    <div class="temp">
                        <button class="embla__prev fa-solid fa-arrow-left"></button>
                        <div class="embla1">
                            <div class="embla__viewport">
                                <div class="embla__container1">
                                    
                                    <div class="embla__slide1">
                                        <a href="${contextPath}/Region/regionDetail?ctgr=8&board=25" style="text-decoration:none">
                                            <div class="photo item">
                                                <img src="resources/images/Region/Gangwon/phoenix.jpg">
                                                <strong>
                                                   휘닉스 블루캐니언
                                                </strong>
                                            </div>
                                        </a>
                                    </div>

                                    <div class="embla__slide1">
                                        <a href="${contextPath}/Region/regionDetail?ctgr=11&board=44" style="text-decoration:none">
                                            <div class="photo item">
                                                <img src="resources/images/Region/Gyeongsang/sacheon.jpg" >
                                                <strong>
                                                    서천아이
                                                </strong>
                                            </div>
                                        </a>
                                    </div>

                                    <div class="embla__slide1">
                                        <a href="${contextPath}/Region/regionDetail?ctgr=8&board=23" style="text-decoration:none">
                                            <div class="photo item">
                                                <img src="resources/images/Region/Gangwon/sokcho.jpg" >
                                                <strong>
                                                    속초 얼라이브 하트
                                                </strong>
                                            </div>
                                        </a>
                                    </div>

                                    <div class="embla__slide1">
                                        <a href="${contextPath}/Region/regionDetail?ctgr=5&board=8" style="text-decoration:none">
                                            <div class="photo item">
                                                <img src="resources/images/Region/Busan/busanNamGu.jpg" >
                                                <strong>
                                                    오륙도 스카이워크
                                                </strong>
                                            </div>
                                        </a>
                                    </div>

                                    <div class="embla__slide1">
                                        <a href="${contextPath}/Region/regionDetail?ctgr=9&board=50" style="text-decoration:none">
                                            <div class="photo item">
                                                <img src="resources/images/Region/Chungcheong/jecheon.jpg" >
                                                <strong>
                                                  제천 용추폭포 유리전망대
                                                </strong>
                                            </div>
                                        </a>
                                    </div>

                                    <div class="embla__slide1">
                                        <a href="${contextPath}/Region/regionDetail?ctgr=9&board=62" style="text-decoration:none">
                                            <div class="photo item">
                                                <img src="resources/images/Region/Chungcheong/jijoonghaeMaeul.jpg" >
                                                <strong>
                                                    지중해마을
                                                </strong>
                                            </div>
                                        </a>
                                    </div>

                                    <div class="embla__slide1">
                                        <a href="${contextPath}/Region/regionDetail?ctgr=9&board=49" style="text-decoration:none">
                                            <div class="photo item">
                                                <img src="resources/images/mainHome/top10/danyang.PNG" >
                                                <strong>
                                                    단양 수양개빛터널
                                                </strong>
                                            </div>
                                        </a>
                                    </div>

                                    <div class="embla__slide1">
                                        <a href="${contextPath}/Region/regionDetail?ctgr=8&board=22" style="text-decoration:none">
                                            <div class="photo item">
                                                <img src="resources/images/Region/Gangwon/jumunjin.jpg" >
                                                <strong>
                                                    주문진 해변
                                                </strong>
                                            </div>
                                        </a>
                                    </div>

                                    <div class="embla__slide1">
                                        <a href="${contextPath}/Region/regionDetail?ctgr=11&board=43" style="text-decoration:none">
                                            <div class="photo item">
                                                <img src="resources/images/Region/Gyeongsang/gyeongju.jpg" >
                                                <strong>
                                                    월정교
                                                </strong>
                                            </div>
                                        </a>
                                    </div>

                                    <div class="embla__slide1">
                                        <a href="${contextPath}/Region/regionDetail?ctgr=8&board=21" style="text-decoration:none">
                                            <div class="photo item">
                                                <img src="resources/images/mainHome/top10/haniranderpam.PNG" >
                                                <strong>
                                                    하늬라벤더팜
                                                </strong>
                                            </div>
                                        </a>
                                    </div>

                                </div>
                                
                            </div>
                        </div>
                        <button class="embla__next fa-solid fa-arrow-right"></button>
                    </div>
                </section>
                <br>
                <section class="container6">
                    <b>테마</b>
                </section>

                
                    <div class="temp1">
                        <button class="embla__prev1 fa-solid fa-arrow-left"></button>
                        <div class="embla2">
                            <div class="embla__viewport1">
                                    <div class="embla__container2">
                                        <div class="embla__slide2">
                                            <a href="${contextPath}/theme/famousRestaurant" style="text-decoration:none">
                                                <section class="item2 photo1">
                                                    <img src="${contextPath}/resources/images/ThemeBoard/FamousRestaurant/Sub.png">
                                                </section>
                                                <strong>
                                                    서퍼의 천국 양양에 서퍼들이 반한 맛집!
                                                    <br>
                                                    솜다리 버거
                                                </strong>
                                            </a>
                                        </div>
                                        <div class="embla__slide2">        
                                            <a href="${contextPath}/theme/coupleTrip" style="text-decoration:none">
                                                <section class="item2 photo1">
                                                    <img src="${contextPath}/resources/images/ThemeBoard/CoupleTrip/CoupleTripArt1.jpg" >
                                                </section>
                                                <strong>
                                                    날 풀리기만 기다렸다면!? 김해로 커플여행 가즈앙!
                                                    <br>
                                                    경남 김해 커플여행 코스
                                                </strong>
                                            </a>
                                        </div>
                                        <div class="embla__slide2">
                                            <a href="${contextPath}/theme/familyTrip" style="text-decoration:none">
                                                <section class="item2 photo1">
                                                    <img src="${contextPath}/resources/images/ThemeBoard/FamilyTrip/FamilyTripSub.jpg" >
                                                </section>
                                                <strong>
                                                    아이와 나들이 떠나는 인천 여행 :)
                                                    <br>
                                                    인천 가족나들이 코스
                                                </strong>
                                            </a>
                                        </div>

                                        <div class="embla__slide2">
                                            <a href="${contextPath}/theme/activity" style="text-decoration:none">
                                                <section class="item2 photo1">
                                                    <img src="resources/images/mainHome/theme/activities.png" >
                                                </section>
                                                <strong>
                                                    더위와 스트레스 날려버릴
                                                    <br>
                                                    속이 뻥 뚫리는 액티비티
                                                </strong>
                                            </a>
                                        </div>
                                        
                                        <div class="embla__slide2">
                                            <a href="${contextPath}/theme/trainTrip" style="text-decoration:none">
                                                <section class="item2 photo1">
                                                    <img src="${contextPath}/resources/images/ThemeBoard/TrainTrip/TrainTripTrain1.jpg" >
                                                </section>
                                                <strong>
                                                    칙칙폭폭!! 기차타고 떠나요~
                                                    <br>
                                                    부산의 밤 풍경을 즐기는 여행(힐링코스)
                                                </strong>
                                            </a>
                                        </div>
                                            
                                    </div>
                            </div>        
                        </div>
                        <button class="embla__next1 fa-solid fa-arrow-right"></button>       
                    </div>       

            </section>

        </section>

        <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
        
    </main>

    <script>
        /* 메인 부분 */

        var emblaNode = document.querySelector(".viewport2");
        var options = { loop: true };
        var plugins = [EmblaCarouselAutoplay()]; // Plugins
  
        var embla = EmblaCarousel(emblaNode, options, plugins);

        // Grab button nodes
        const prevButtonNode2 = document.querySelector('.embla__prev2')
        const nextButtonNode2 = document.querySelector('.embla__next2')

        // Add click listeners
        prevButtonNode2.addEventListener('click', embla.scrollPrev, true)
        nextButtonNode2.addEventListener('click', embla.scrollNext, true)



        /* 이달의 베스트 여행지 top10 부분 */
        
        // Grab wrapper nodes
        const rootNode = document.querySelector('.embla1')
        const viewportNode = rootNode.querySelector('.embla__viewport')

        // Grab button nodes
        const prevButtonNode = document.querySelector('.embla__prev')
        const nextButtonNode = document.querySelector('.embla__next')

        // Initialize the carousel
        const embla1 = EmblaCarousel(viewportNode)

        // Add click listeners
        prevButtonNode.addEventListener('click', embla1.scrollPrev, false)
        nextButtonNode.addEventListener('click', embla1.scrollNext, false)

        
        /* 테마 부분 */

        // Grab wrapper nodes
        const rootNode1 = document.querySelector('.embla2')
        const viewportNode1 = rootNode1.querySelector('.embla__viewport1')

        // Grab button nodes
        const prevButtonNode1 = document.querySelector('.embla__prev1')
        const nextButtonNode1 = document.querySelector('.embla__next1')

        // Initialize the carousel
        const embla2 = EmblaCarousel(viewportNode1)

        // Add click listeners
        prevButtonNode1.addEventListener('click', embla2.scrollPrev, false)
        nextButtonNode1.addEventListener('click', embla2.scrollNext, false)


        


      </script>
</body>
</html>