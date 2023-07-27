<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TravelMaker</title>
    <link rel="shortcut icon" type="image/x-icon" href="image/small_logo.png">
    <link rel="stylesheet" href="${contextPath}/resources/css/theme-home-style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/ef988defcf.js" crossorigin="anonymous"></script>
</head>
<body>
    <main>
        <header>
            <section class="head">
                <section id="logo">
                    <a href="#">
                        <img src="${contextPath}/resources/images/logo.png" width="100%">
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
                    <button>
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
           
            <section class="container">
                <section class="container0"></section>
            
                <section class="container1">
                    <div id="slideShow">
                        <ul class="slides">                    
                           <a href="" style="display:contents"><li><img src="${contextPath}/resources/images/ThemeBoard/main/테마여행 메인2.png" alt=""></li></a>
                            <a href="" style="display:contents"> <li><img src="${contextPath}/resources/images/ThemeBoard/main/테마여행 메인.jpg" alt=""></li></a>  
                            <a href="" style="display:contents"><li><img src="${contextPath}/resources/images/ThemeBoard/main/테마여행 메인1.png" alt=""></li></a>  
                            <a href="" style="display:contents"><li><img src="${contextPath}/resources/images/ThemeBoard/main/테마여행 메인3.png" alt=""></li></a>  
                        </ul>
                        <p class="controller">
                            <span class="prev">&lang;</span>
                            <span class="next">&rang;</span>
                        </p>  
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
                        <section class="item" id="photo">
                            <img src="${contextPath}/resources/images/ThemeBoard/main/가을1.jpg" >
                        </section>
                        <section class="item" id="photo">
                            <img src="${contextPath}/resources/images/ThemeBoard/main/연인 여행.jpg">
                        </section>
                        <section class="item" id="photo">
                            <img src="${contextPath}/resources/images/ThemeBoard/main/고궁.jpg">
                        </section>
                        <section class="item" id="photo">
                            <img src="${contextPath}/resources/images/ThemeBoard/main/디즈니랜드.jpg">
                        </section>
                    </section>

                    <section class="flex-container2">
                        <section class="item1">
                            <b>가을 타는 당신!</b>
                            
                        </section>
                        <section class="item1">
                            <b>연인과 함께!</b>

                        </section>
                        <section class="item1">
                            <b>역사.. 좋아하세요?</b>

                        </section>
                        <section class="item1">
                            <b>5월은 가정의날!</b>
                        </section>
                    </section>

                    <section class="flex-container3">
                        <section class="item2">
                            <b>여행지 이름</b>
                            <br>
                            <b>여행지 주소</b>
                        </section>
                        <section class="item2">
                            <b>여행지 이름</b>
                            <br>
                            <b>여행지 주소</b>
                        </section>
                        <section class="item2">
                            <b>여행지 이름</b>
                            <br>
                            <b>여행지 주소</b>
                        </section>
                        <section class="item2">
                            <b>여행지 이름</b>
                            <br>
                            <b>여행지 주소</b>
                        </section>
                        
                    </section>
                </section>

                <section class="container6">
                    <section class="container6-1">
                        <b>키워드 & 해쉬태그</b>
                    </section>
                    <section class="flex-container4">
                        <section class="item3">
                            #봄
                        </section>
                        <section class="item3">
                            #어린이날
                        </section>
                        <section class="item3">
                            #축제
                        </section>
                        <section class="item3">
                            #벚꽃
                        </section>
                        <section class="item3">
                            #맛집
                        </section>
                        <section class="item3">
                            #액티비티
                        </section>
                        <section class="item3">
                            #바다
                        </section>

                    </section>


                    <section class="flex-container5">
                        <section class="item3">
                            #산
                        </section>
                        <section class="item3">
                            #커플
                        </section>
                        <section class="item3">
                            #싱글
                        </section>
                        <section class="item3">
                            #벙글
                        </section>
                        <section class="item3">
                            #가족
                        </section>
                        <section class="item3">
                            #비
                        </section>
                        <section class="item3">
                            #기차
                        </section>
                    </section>
                </section>
            </section>
            

        </section>

        <footer>
            <section>Copyright © TravelMaker Corp. All rights reserved.</section>
            <section class="footer"> 　　이용약관　　 </section>
            <section class="footer"> 　　운영정책　　 </section>
            <section class="footer"> 　　1:1문의　　 </section>
        </footer>
    </main>


    <script src="${contextPath}/resources/js/theme-home-style2.js"></script>
</body>
</html>