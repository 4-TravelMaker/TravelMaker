<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TravelMaker</title>
    <link rel="shortcut icon" type="image/x-icon" href="image/small_logo.png">
 	<link rel="stylesheet" href="${contextPath}/resources/css/region1.css">
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
                        <img src="image/logo.png" width="100%">
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

            <section id="middle1">
                <section id="button">
                    <button><</button>
                </section>
                <section id="middle1-1">
                    <section>
                        <section id="pic">
                            <img src="${contextPath}/resources/images/여행이 있는 주말.jpg">
                        </section>
                        <section id="article">
                            <p>여행이 있는 주말</p>
                            <p>매월 마지막 주말은 일상에서 벗어나 여행을 떠나보세요!</p>
                        </section>
                    </section>
                    <section>
                        <section id="pic">
                            <img src="${contextPath}/resources/images/한국관광의별.jpg">
                        </section>
                        <section id="article">
                            <p>한국 관광의 별</p>
                            <p>한 해 동안 가장 빛난 별을 찾아 소개합니다!</p>
                        </section>
                    </section>
                    <section>
                        <section id="pic">
                            <img src="${contextPath}/resources/images/반려동물 동반여행.jpg">
                        </section>
                        <section id="article">
                            <p>반려동물 동반여행</p>
                            <p>반려동물과 함께할 수 있는 여행을 소개합니다.</p>
                        </section>
                    </section>
                </section>
                <section id="button">
                    <button>></button>
                </section>
            </section>

            <section id="middle2">
                <section id="map">지도</section>
                <section class="infobox">
                    <section id="information">
                        <div id="info2" >여행지정보</div>
                    </section>
                    <section class="photobox1">
                        <section id="photo">
                            <section>사진</section>
                            <section>정보</section>
                        </section>
                        <section id="photo">
                            <section>사진</section>
                            <section>정보</section>
                        </section>
                        <section id="photo">
                            <section>사진</section>
                            <section>정보</section>
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
</body>
</html>