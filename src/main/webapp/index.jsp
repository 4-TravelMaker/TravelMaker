<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TravelMaker</title>
    <link rel="shortcut icon" type="image/x-icon" href="image/small_logo.png">
    <link rel="stylesheet" href="./styles/TravelMakerMain.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
    <script src="./js/index.js"></script>
    <!-- <script src="https://kit.fontawesome.com/ef988defcf.js" crossorigin="anonymous"></script> -->
    <script src="https://unpkg.com/embla-carousel/embla-carousel.umd.js"></script>
	<script src="https://code.jquery.com/jquery-latest.js"></script>
    <script src="https://unpkg.com/embla-carousel-autoplay/embla-carousel-autoplay.umd.js"></script>

=======
    <link rel="shortcut icon" type="image/x-icon" href="${contextPath}/resources/images/small_logo.png">
    <link rel="stylesheet" href="${contextPath}/resources/css/region3.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/ef988defcf.js" crossorigin="anonymous"></script>
    
>>>>>>> e437157e1796ff6fe72bc143a0df505a9f6c7a26
</head>
<body>
    <main>
        <header>
            <section class="head">
                <section id="logo">
                    <a href="#">
<<<<<<< HEAD
                        <img src="./images/logo.png" width="100%">
=======
                        <img src="image/logo.png" width="100%">
>>>>>>> e437157e1796ff6fe72bc143a0df505a9f6c7a26
                    </a>
                </section>

                <section></section>

                <section id="search-area">
                    <form action="#" name="search-form">
                        <fieldset>
                            <section>
                                <input type="search" id="query" name="query" autocomplete="off">
                                <button type="submit" id="search-btn" class="fa-solid fa-magnifying-glass"></button>
                            </section>
                        </fieldset>
                    </form>
                </section>
                <section></section>

                <section class="login-area">
<<<<<<< HEAD
                    <button id="btnLogin" onclick="clickBtnLogin()">
=======
                    <button>
>>>>>>> e437157e1796ff6fe72bc143a0df505a9f6c7a26
                        <a href="#">로그인</a>
                    </button>
                    <button>
                        <a href="#">회원가입</a>
                    </button>
                </section>
            </section>
        </header>

        <nav>
            <section id="nav">
                <section class="nav-menu">
                    <a href="#">지역</a>
                </section>
                <section class="nav-menu">
                    <a href="#">테마</a>
                </section>
                <section class="nav-menu">
                    <a href="#">여행 계획하기</a>
                </section>
                <section class="nav-menu">
                    <a href="#">여행 리뷰</a>
                </section>
            </section>
        </nav>

        <section id="middle">
<<<<<<< HEAD
           
            <section class="container">
                <section class="container0"></section>
            
                <section class="container1">
                    <div class="embla" id="slideShow">
                        
                            <div class="embla__container">
                                <div class="embla__slide">
                                    <!-- <a href="https://m.naver.com/"> -->
                                        <img src="./images/테마여행 메인.png" alt="메인1">
                                    <!-- </a> -->
                                </div>
                                <div class="embla__slide">
                                    <img src="./images/테마여행 메인1.png" alt="메인2">
                                </div>
                                <div class="embla__slide">
                                    <img src="./images/테마여행 메인2.png" alt="메인3">
                                </div>
                                <div class="embla__slide">
                                    <img src="./images/테마여행 메인3.png" alt="메인4">
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
                            <img src="./images/가을1.jpg">
                                <strong><h2>가을 타는 당신!</h2></strong>
                                <br>
                                <b>여행지 이름</b>
                                <br>
                                <b>여행지 주소</b>
                        </div>
                        <div class="item" id="photo">
                            <img src="./images/연인 여행.jpg">
                                <strong><h2>연인과 함께!</h2></strong>
                                <br>
                                <b>여행지 이름</b>
                                <br>
                                <b>여행지 주소</b>
                        </div>
                        <div class="item" id="photo">
                            <img src="./images/고궁.jpg">
                                <strong><h2>역사.. 좋아하세요?</h2></strong>
                                <br>
                                <b>여행지 이름</b>
                                <br>
                                <b>여행지 주소</b>
                        </div>
                        <div class="item" id="photo">
                            <img src="./images/디즈니랜드.jpg">
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
                    <section class="container6-1">7
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
            
=======
            <section class = "title">
                <p>헤이다이닝</p>
                <p>울산 남구</p>
                <mark>매콤한 먹물파스타가 맛있는 레스토랑</mark>
                <hr>
            </section>
            <section class="like">
                <p>좋아요</p>
                <section>
                     <img src="${contextPath}/resources/images/헤이다이닝.jpg" width="550px" height="370px">
                </section>
            </section>
            <section class="article">
                <p>상세정보</p>
                <hr>
                <p>울산 삼산동 업스퀘어 근처 맥도날드 뒤편에 있는 헤이다이닝은 깔끔하고 모던한 장소에서 식사를 즐길 수 있는 이탈리안 레스토랑이다. 대표 메뉴는 타이거 쉬림프 로제 파스타, 이베리코 온 더 리조또, 블랙앵거스 살치살 스테이크이고 그 외 스퀴드 잉크 파스타, 오징어먹물 아란치니, 자몽에이드 등 다양한 메뉴가 있다. 밤이 되면 조도로 분위기를 조절해서 연인들의 데이트 장소로 인기가 많다. 태화강변이 근처에 있어 함께 둘러보기 좋고, 서점과 미술관, 공원도 있다.</p>
            </section>
            <section class="map">
                <section>지도</section>
                <section class="map1-1">
                    <section>
                        <ul>
                            <li>문의 및 안내</li>
                            <li>주소</li>
                            <li>주차</li>
                            <li>취급메뉴</li>
                        </ul>
                    </section>
                    <section>
                        <ul>
                            <li>홈페이지</li>
                            <li>영업시간</li>
                        </ul>
                    </section>
                </section>
            </section>
    

>>>>>>> e437157e1796ff6fe72bc143a0df505a9f6c7a26

        </section>

        <footer>
            <section>Copyright © TravelMaker Corp. All rights reserved.</section>
            <section class="footer"> 　　이용약관　　 </section>
            <section class="footer"> 　　운영정책　　 </section>
            <section class="footer"> 　　1:1문의　　 </section>
        </footer>
    </main>
<<<<<<< HEAD

    <script type="text/javascript">
        var emblaNode = document.querySelector('.embla')
        var options = { loop: false }
        var plugins = [EmblaCarouselAutoplay()] // Plugins
      
        var embla = EmblaCarousel(emblaNode, options, plugins)
        
       

    
    </script>

    

      
    <!-- <script src="test.js"></script> -->
=======
>>>>>>> e437157e1796ff6fe72bc143a0df505a9f6c7a26
</body>
</html>