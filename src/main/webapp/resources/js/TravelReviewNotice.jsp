<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TravelMaker</title>
    <link rel="shortcut icon" type="image/x-icon" href="image/small_logo.png">
    <link rel="stylesheet" href="${contextPath }/resources/css/TravelReviewNotice.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/ef988defcf.js" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/aa566476b0.js" crossorigin="anonymous"></script>
    
</head>
<body>
    <main>
        <header>
            <section class="head">
                <section id="logo">
                    <a href="#">
                        <img src="${contextPath }/resources/image/logo.png" width="100%">
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

            <div id="title-notice">
                <h1>여행 리뷰 게시판</h1>
            </div>
           

            <div>
                <h2 style="padding-left: 105px;">공지사항</h2>
            </div>
            
            <div style="width: 1100px; padding-left: 100px;">
                <table style="padding: 0 100px; border-top: 1px solid gray; border-bottom: 1px solid gray; border-collapse : collapse;">
                    <tr id="tr">
                        <th id="table-1">구분</th>
                        <th id="table-1">제목</th>
                        <th id="table-1">작성일</th>
                        <th id="table-1">조회수</th>
                        <th id="table-1">좋아요</th>
                    </tr>

                    <tr id="tr1">
                        <th id="table-1"></th>
                        <th id="table-1">게시글 제목 1</th>
                        <th id="table-1">2023.06.29</th>
                        <th id="table-1">1000</th>
                        <th id="table-1">100</th>
                    </tr>

                    <tr id="tr1">
                        <th id="table-1"></th>
                        <th id="table-1">게시글 제목 2</th>
                        <th id="table-1">2023.06.29</th>
                        <th id="table-1">1000</th>
                        <th id="table-1">100</th>
                    </tr>

                    <tr id="tr1">
                        <th id="table-1"></th>
                        <th id="table-1">게시글 제목 3</th>
                        <th id="table-1">2023.06.29</th>
                        <th id="table-1">1000</th>
                        <th id="table-1">100</th>
                    </tr>

                    <tr id="tr1">
                        <th id="table-1"></th>
                        <th id="table-1">게시글 제목 4</th>
                        <th id="table-1">2023.06.29</th>
                        <th id="table-1">1000</th>
                        <th id="table-1">100</th>
                    </tr>

                    <tr id="tr1">
                        <th id="table-1"></th>
                        <th id="table-1">게시글 제목 5</th>
                        <th id="table-1">2023.06.29</th>
                        <th id="table-1">1000</th>
                        <th id="table-1">100</th>
                    </tr>

                    <tr id="tr1">
                        <th id="table-1"></th>
                        <th id="table-1">게시글 제목 6</th>
                        <th id="table-1">2023.06.29</th>
                        <th id="table-1">1000</th>
                        <th id="table-1">100</th>
                    </tr>

                    <tr id="tr1">
                        <th id="table-1"></th>
                        <th id="table-1">게시글 제목 7</th>
                        <th id="table-1">2023.06.29</th>
                        <th id="table-1">1000</th>
                        <th id="table-1">100</th>
                    </tr>

                    <tr id="tr1">
                        <th id="table-1"></th>
                        <th id="table-1">게시글 제목 8</th>
                        <th id="table-1">2023.06.29</th>
                        <th id="table-1">1000</th>
                        <th id="table-1">100</th>
                    </tr>

                    <tr id="tr1">
                        <th id="table-1"></th>
                        <th id="table-1">게시글 제목 9</th>
                        <th id="table-1">2023.06.29</th>
                        <th id="table-1">1000</th>
                        <th id="table-1">100</th>
                    </tr>

                    <tr id="tr1">
                        <th id="table-1"></th>
                        <th id="table-1">게시글 제목 10</th>
                        <th id="table-1">2023.06.29</th>
                        <th id="table-1">1000</th>
                        <th id="table-1">100</th>
                    </tr>
                </table>
            </div>

            <div id="last">

            </div>

            <section></section>
        
            
            

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