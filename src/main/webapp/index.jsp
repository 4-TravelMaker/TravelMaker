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
                                        <a href="https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=b30c2e42-dd00-463a-b726-0e40b1d13bbb" style="display:contents">
                                            <img src="resources/images/mainHome/sunset.png"  style="width:100%;height:100%;object-fit:contain;">
                                        </a>
                                    </div>
                                    <div class="embla__slide">
                                        <a href="https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=7cf983d9-35e7-49e0-914d-1e67665be577" style="display:contents"> 
                                            <img src="resources/images/mainHome/incheon.png" style="width:100%;height:100%;object-fit:contain;">
                                        </a>
                                    </div>
                                    <div class="embla__slide">
                                        <a href="https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=dad57d1b-05e5-4633-a85b-58e32d93b1fe" style="display:contents">
                                            <img src="resources/images/mainHome/yeosu.png" style="width:100%;height:100%;object-fit:contain;">
                                        </a>
                                    </div>
                                    <div class="embla__slide">
                                        <a href="https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=3301d3ce-aa66-483d-8e78-66b4cac3a426" style="display:contents">
                                            <img src="resources/images/mainHome/han-an.png" style="width:100%;height:100%;object-fit:contain;">
                                        </a>
                                    </div>
                                    <div class="embla__slide">
                                        <a href="https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=b3e8cc50-c792-4c9a-8fac-49376c99ef41" style="display:contents">
                                            <img src="resources/images/mainHome/suwon.png" style="width:100%;height:100%;object-fit:contain;">
                                        </a>
                                    </div>
                                    <div class="embla__slide">
                                        <a href="https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=9b251ab6-7f28-4547-a5bb-508644372dc9" style="display: contents">
                                            <img src="resources/images/mainHome/summerflower.png" style="width:100%;height:100%;object-fit:contain;">
                                        </a>
                                    </div>
                                    <div class="embla__slide">
                                        <a href="https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=e46d4b2f-5da4-40ad-ac69-f6492bfb6816" style="display: contents;">
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
                                        <a href="https://korean.visitkorea.or.kr/detail/ms_detail.do?cotid=79ac09d6-364a-4762-b3d0-e7ee835b0063&big_category=A02&mid_category=A0205&big_area=1" style="text-decoration:none">
                                            <div class="photo item">
                                                <img src="resources/images/mainHome/top10/han-river.jpg">
                                                <strong>
                                                    반포대교 달빛무지개 분수
                                                </strong>
                                            </div>
                                        </a>
                                    </div>

                                    <div class="embla__slide1">
                                        <a href="https://korean.visitkorea.or.kr/detail/ms_detail.do?cotid=96166686-8e42-41c0-a9f0-a0d505c0643f&big_category=A01&mid_category=A0101&big_area=35" style="text-decoration:none">
                                            <div class="photo item">
                                                <img src="resources/images/mainHome/top10/bomunjeong.jpg" >
                                                <strong>
                                                    보문정 (경주)
                                                </strong>
                                            </div>
                                        </a>
                                    </div>

                                    <div class="embla__slide1">
                                        <a href="https://korean.visitkorea.or.kr/detail/ms_detail.do?cotid=424cf626-55e1-444c-a3c7-1a7ae37138ee&big_category=A02&mid_category=A0205&big_area=6" style="text-decoration:none">
                                            <div class="photo item">
                                                <img src="resources/images/mainHome/top10/young-do.jpg" >
                                                <strong>
                                                    영도 청학배수지 전망대
                                                </strong>
                                            </div>
                                        </a>
                                    </div>

                                    <div class="embla__slide1">
                                        <a href="https://korean.visitkorea.or.kr/detail/rem_detail.do?cotid=8fba2de6-87b3-4dad-9066-471d2e8f520f&con_type=12100" style="text-decoration:none">
                                            <div class="photo item">
                                                <img src="resources/images/mainHome/top10/nam-i.JPG" >
                                                <strong>
                                                    남이섬
                                                </strong>
                                            </div>
                                        </a>
                                    </div>

                                    <div class="embla__slide1">
                                        <a href="https://korean.visitkorea.or.kr/detail/ms_detail.do?cotid=f5da2334-1c8c-4049-8e06-4db38333a57f&big_category=A01&mid_category=A0101&big_area=39" style="text-decoration:none">
                                            <div class="photo item">
                                                <img src="resources/images/mainHome/top10/sungsanilchulbong.PNG" >
                                                <strong>
                                                  성산일출봉
                                                </strong>
                                            </div>
                                        </a>
                                    </div>

                                    <div class="embla__slide1">
                                        <a href="https://korean.visitkorea.or.kr/detail/ms_detail.do?cotid=66dba60b-a623-4753-a3b4-76a62fcbbe05&big_category=A02&mid_category=A0201&big_area=37" style="text-decoration:none">
                                            <div class="photo item">
                                                <img src="resources/images/mainHome/top10/JEONJU.PNG" >
                                                <strong>
                                                    전북 전주 한옥마을 [슬로시티]
                                                </strong>
                                            </div>
                                        </a>
                                    </div>

                                    <div class="embla__slide1">
                                        <a href="https://korean.visitkorea.or.kr/detail/ms_detail.do?cotid=1fb3cc64-aabd-495f-ae45-52b76c162a9f&big_category=A02&mid_category=A0205&big_area=33" style="text-decoration:none">
                                            <div class="photo item">
                                                <img src="resources/images/mainHome/top10/danyang.PNG" >
                                                <strong>
                                                    단양 수양개빛터널
                                                </strong>
                                            </div>
                                        </a>
                                    </div>

                                    <div class="embla__slide1">
                                        <a href="https://korean.visitkorea.or.kr/detail/ms_detail.do?cotid=0c70bb97-5ea0-4f1c-99e8-9a8cad34a596&big_category=A01&mid_category=A0101&big_area=36" style="text-decoration:none">
                                            <div class="photo item">
                                                <img src="resources/images/mainHome/top10/sangdo.jpg" >
                                                <strong>
                                                    상주은모래비치
                                                </strong>
                                            </div>
                                        </a>
                                    </div>

                                    <div class="embla__slide1">
                                        <a href="https://korean.visitkorea.or.kr/detail/ms_detail.do?cotid=f8357c6d-5185-4c55-b3c0-363c043b3462&big_category=A02&mid_category=A0205&big_area=38" style="text-decoration:none">
                                            <div class="photo item">
                                                <img src="resources/images/mainHome/top10/dolsan.PNG" >
                                                <strong>
                                                    돌산대교
                                                </strong>
                                            </div>
                                        </a>
                                    </div>

                                    <div class="embla__slide1">
                                        <a href="https://korean.visitkorea.or.kr/detail/ms_detail.do?cotid=7f215512-d70e-4616-96c2-57b6c2d7789f&big_category=A01&mid_category=A0101&big_area=32" style="text-decoration:none">
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
                                            <a href="#" style="text-decoration:none">
                                                <section class="item2 photo1">
                                                    <img src="resources/images/mainHome/theme/chilgok.png">
                                                </section>
                                                <strong>
                                                    유유자적 걸으며 즐기는
                                                    <br>
                                                    경북 칠곡 여행
                                                </strong>
                                            </a>
                                        </div>
                                        <div class="embla__slide2">        
                                            <a href="#" style="text-decoration:none">
                                                <section class="item2 photo1">
                                                    <img src="resources/images/mainHome/theme/yangyang.png" >
                                                </section>
                                                <strong>
                                                    바닷바람을 만끽할 수 있는
                                                    <br>
                                                    강원 양양 여행
                                                </strong>
                                            </a>
                                        </div>
                                        <div class="embla__slide2">
                                            <a href="#" style="text-decoration:none">
                                                <section class="item2 photo1">
                                                    <img src="resources/images/mainHome/theme/youngdong.png" >
                                                </section>
                                                <strong>
                                                    그림 같은 풍경이 펼쳐지는
                                                    <br>
                                                    충북 영동 여행
                                                </strong>
                                            </a>
                                        </div>

                                        <div class="embla__slide2">
                                            <a href="#" style="text-decoration:none">
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
                                            <a href="#" style="text-decoration:none">
                                                <section class="item2 photo1">
                                                    <img src="resources/images/mainHome/theme/gosung.png" >
                                                </section>
                                                <strong>
                                                    여름 무더위를 피할
                                                    <br>
                                                    강원 고성,삼척 물놀이 명소
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