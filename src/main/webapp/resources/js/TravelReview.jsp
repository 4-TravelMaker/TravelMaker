<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TravelMaker</title>
    <link rel="shortcut icon" type="image/x-icon" href="image/small_logo.png">
    <link rel="stylesheet" href="${contextPath }/resources/css/TravelReview.css">
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
        
            <div id="title-review">
                <h1>여행 리뷰 게시판</h1>
            </div>

<!-- --------------------------------------------------------------------------------------------------------------------- -->
            <div>
                <div>
                    <h2 style="padding-left: 50px;">베스트 리뷰</h2>
                </div>

                <div id="best-review">
                    <div>
                        <div id="Writer-1">
                            <div>
                                <img src="${contextPath }/resources/image/profile.png" width="40px" height="40px">
                            </div>
                            <div id="Writer-text">
                                작성자
                            </div>
                        </div>

                        <div>
                            <img src="${contextPath }/resources/image/best-review img.PNG" width="300px">
                        </div>

                        <div id="Writer-2">
                            <div id="Writer-1-2">
                                <i class="fa-regular fa-heart"></i>
                                <div>1000</div>
                            </div>

                            <div id="Writer-1-2">
                                <i class="fa-regular fa-comment"></i>
                                <div>200</div>
                            </div>
                        </div>

                        <div>부산 3박 4일 여행기!!</div>
                    </div>

                    <div>
                        <div id="Writer-1">
                            <div>
                                <img src="${contextPath }/resources/image/profile.png" width="40px" height="40px">
                            </div>
                            <div id="Writer-text">
                                작성자
                            </div>
                        </div>

                        <div>
                            <img src="${contextPath }/resources/image/best-review img.PNG" width="300px">
                        </div>

                        <div id="Writer-2">
                            <div id="Writer-1-2">
                                <i class="fa-regular fa-heart"></i>
                                <div>1000</div>
                            </div>

                            <div id="Writer-1-2">
                                <i class="fa-regular fa-comment"></i>
                                <div>200</div>
                            </div>
                        </div>

                        <div>부산 3박 4일 여행기!!</div>
                    </div>

                    <div>
                        <div id="Writer-1">
                            <div>
                                <img src="${contextPath }/resources/image/profile.png" width="40px" height="40px">
                            </div>
                            <div id="Writer-text">
                                작성자
                            </div>
                        </div>

                        <div>
                            <img src="${contextPath }/resources/image/best-review img.PNG" width="300px">
                        </div>

                        <div id="Writer-2">
                            <div id="Writer-1-2">
                                <i class="fa-regular fa-heart"></i>
                                <div>1000</div>
                            </div>

                            <div id="Writer-1-2">
                                <i class="fa-regular fa-comment"></i>
                                <div>200</div>
                            </div>
                        </div>

                        <div>부산 3박 4일 여행기!!</div>
                    </div>
                </div>

            </div>
<!-- --------------------------------------------------------------------------------------------------------------------- -->
            <section id="Notice">
                <div>
                    <h2 style="padding-left: 50px;">공지사항</h2>
                </div>

                <div id="Notice-1">
                    <div>1</div>
                    <div>공지사항1 입니다.</div>
                </div>

                <div id="Notice-1">
                    <div>2</div>
                    <div>공지사항2 입니다.</div>
                </div>
                
            </section>

            <section >
                <div>
                    <h2 style="padding-left: 50px; padding-top: 30px;">여행 리뷰</h2>
                </div>

                <div id="Travel-Review1">
                    <div>
                        <div id="Writer-1">
                            <div>
                                <img src="${contextPath }/resources/image/profile.png" width="40px" height="40px">
                            </div>
                            <div id="Writer-text">
                                작성자
                            </div>
                        </div>

                        <div>
                            <img src="${contextPath }/resources/image/Travel-Review.PNG" width="230px">
                        </div>

                        <div id="Writer-2">
                            <div id="Writer-1-2">
                                <i class="fa-regular fa-heart"></i>
                                <div>100</div>
                            </div>

                            <div id="Writer-1-2">
                                <i class="fa-regular fa-comment"></i>
                                <div>20</div>
                            </div>
                        </div>

                        <div>서울 3박 4일 여행기!!</div>
                    </div>

                    <div>
                        <div id="Writer-1">
                            <div>
                                <img src="${contextPath }/resources/image/profile.png" width="40px" height="40px">
                            </div>
                            <div id="Writer-text">
                                작성자
                            </div>
                        </div>

                        <div>
                            <img src="${contextPath }/resources/image/Travel-Review.PNG" width="230px">
                        </div>

                        <div id="Writer-2">
                            <div id="Writer-1-2">
                                <i class="fa-regular fa-heart"></i>
                                <div>100</div>
                            </div>

                            <div id="Writer-1-2">
                                <i class="fa-regular fa-comment"></i>
                                <div>20</div>
                            </div>
                        </div>

                        <div>제주 3박 4일 여행기!!</div>
                    </div>

                    <div>
                        <div id="Writer-1">
                            <div>
                                <img src="${contextPath }/resources/image/profile.png" width="40px" height="40px">
                            </div>
                            <div id="Writer-text">
                                작성자
                            </div>
                        </div>
    
                        <div>
                            <img src="${contextPath }/resources/image/Travel-Review.PNG" width="230px">
                        </div>
    
                        <div id="Writer-2">
                            <div id="Writer-1-2">
                                <i class="fa-regular fa-heart"></i>
                                <div>100</div>
                            </div>
    
                            <div id="Writer-1-2">
                                <i class="fa-regular fa-comment"></i>
                                <div>20</div>
                            </div>
                        </div>
    
                        <div>서울 3박 4일 여행기!!</div>
                    </div>
                </div>

                <div id="Travel-Review2">
                    <div>
                        <div id="Writer-1">
                            <div>
                                <img src="${contextPath }/resources/image/profile.png" width="40px" height="40px">
                            </div>
                            <div id="Writer-text">
                                작성자
                            </div>
                        </div>

                        <div>
                            <img src="${contextPath }/resources/image/Travel-Review.PNG" width="230px">
                        </div>

                        <div id="Writer-2">
                            <div id="Writer-1-2">
                                <i class="fa-regular fa-heart"></i>
                                <div>100</div>
                            </div>

                            <div id="Writer-1-2">
                                <i class="fa-regular fa-comment"></i>
                                <div>20</div>
                            </div>
                        </div>

                        <div>부산 3박 4일 여행기!!</div>
                    </div>

                    <div>
                        <div id="Writer-1">
                            <div>
                                <img src="${contextPath }/resources/image/profile.png" width="40px" height="40px">
                            </div>
                            <div id="Writer-text">
                                작성자
                            </div>
                        </div>

                        <div>
                            <img src="${contextPath }/resources/image/Travel-Review.PNG" width="230px">
                        </div>

                        <div id="Writer-2">
                            <div id="Writer-1-2">
                                <i class="fa-regular fa-heart"></i>
                                <div>100</div>
                            </div>

                            <div id="Writer-1-2">
                                <i class="fa-regular fa-comment"></i>
                                <div>20</div>
                            </div>
                        </div>

                        <div>제주 3박 4일 여행기!!</div>
                    </div>

                    <div>
                        <div id="Writer-1">
                            <div>
                                <img src="${contextPath }/resources/image/profile.png" width="40px" height="40px">
                            </div>
                            <div id="Writer-text">
                                작성자
                            </div>
                        </div>
    
                        <div>
                            <img src="${contextPath }/resources/image/Travel-Review.PNG" width="230px">
                        </div>
    
                        <div id="Writer-2">
                            <div id="Writer-1-2">
                                <i class="fa-regular fa-heart"></i>
                                <div>100</div>
                            </div>
    
                            <div id="Writer-1-2">
                                <i class="fa-regular fa-comment"></i>
                                <div>20</div>
                            </div>
                        </div>
    
                        <div>서울 3박 4일 여행기!!</div>
                    </div>
                </div>

                
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