<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- 문자열 관련 함수(메소드) 제공 JSTL (EL 형식으로 작성) --%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TravelMakerThemeCafe</title>
    <link rel="shortcut icon" type="image/x-icon" href="image/small_logo.png">
    <link rel="stylesheet" href="${contextPath}/resources/css/Theme/ThemeCafe.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/ef988defcf.js" crossorigin="anonymous"></script>
</head>
<body>
    <main>
        <jsp:include page="/WEB-INF/views/common/header.jsp"/>

        <section id="middle">


            <section class="container">

                <section class="container1">
                    <h2>Forest Outings</h2>
                    <b>눈과 입이 즐거워지는 곳</b>
                </section>
                <section class="container2">
                    좋아요 0     조회수 0                    
                </section>
                <section class="container2-1">
                    <hr>
                </section>
                <section class="container3">
                    
                    <section class="flex_container1">
                        
                        <div class="item">
                            <img src="${contextPath}/resources/images/ThemeBoard/Cafe/Cafe1.jpg">
                          
                                
                        </div>
                        <div class="item">
                            <img src="${contextPath}/resources/images/ThemeBoard/Cafe/Cafefood2.jpg">
                          
                        </div>
                        <div class="item">
                            <img src="${contextPath}/resources/images/ThemeBoard/Cafe/CafeMenu2.jpg">
                          
                        </div>
                        <div class="item">
                            <img src="${contextPath}/resources/images/ThemeBoard/Cafe/Cafe3.jpg">
                       
                        </div>
                    </section>  

                </section>
                <section class="container4">
                    <hr>
                </section>
                <section class="container5">
                   
                            <b>이런 분들에게 추천해 드립니다!</b>
                            <p>감성적인 느낌을 좋아하는 분</p>
                            <p>빵과 커피에 진심인 분</p>
                            <p>눈과 입이 같이 즐거운게 행복한 분</p>
                    

                </section>
                <section class="container6">
                    <b>Forest Outings</b>
                </section>

                <section class="container7">
                    <section class="container7-1">
                        <img src="${contextPath}/resources/images/ThemeBoard/Cafe/CafeMain.jpg" alt="">
                    </section>
                </section>

                <section class="container8">
                    <section class="container8-1">
                        <table>
                            <ul>
                                <li>사랑하는 연인과 함께 행복한 시간을 보낼수 있습니다.</li>
                                <li> 당신의 입과 눈을 행복하게 할 시간.</li>
                                <li>감성과 맛이 함께하는
                                    포레스트 아웃팅스에 오신 것을 환영합니다.</li>
                            </ul>
                        </table>

                    </section>
                    
                </section>
               
                <section class="container9">
                    <section class="container9-1">
                        <section class="item3">
                            <img src="${contextPath}/resources/images/ThemeBoard/Cafe/CafeRosetta.jpg">
                        </section>
                        <section class="item3">
                            <img src="${contextPath}/resources/images/ThemeBoard/Cafe/Cafefood.jpg">
                        </section>

                    </section>

                </section>

                <section class="container10">
                    <section class="container10-1">
                        <section class="item4">
                            <table>
                                 <ul>
                                    <li>포레스트 아웃팅스를 소개합니다!</li>
                                    <li>식물원인가 카페인가!?</li>
                                    <li>그냥 감성만 좋은게 아니라고!?</li>
                                    <li>빵이 그렇게 맛이 좋다며!?</li>
                                    <li>사진만 찍으면 나도 인플루언서!?</li>
                                    
                                 </ul>
                            </table>
                        </section>

                        <section class="item4">
                            <table>
                                <ul>
                                    <li>MBTI 'E'와 'I'가 둘다 만족한다던데??</li>
                                    <li>매장에 와보면 한눈에 눈부터 즐거울 걸!?</li>
                                    <li> 'I'들을 위한 조용한 공간도 있던데!?</li>
                                    <li>시원한 숲속에 우리만의 공간이 있어!?</li>
                                </ul>
                           </table>
                        </section>

                    </section>

                </section>

                <section class="container9">
                    <section class="container9-1">
                        <section class="item3">
                            <img src="${contextPath}/resources/images/ThemeBoard/Cafe/Cafemenu4.jpg">
                        </section>
                        <section class="item3">
                            <img src="${contextPath}/resources/images/ThemeBoard/Cafe/Cafemenu5.jpg">
                        </section>

                    </section>

                </section>

                <section class="container10">
                    <section class="container10-1">
                        <section class="item4">
                            <table>
                                 <ul>
                                    <li>주차장도 넓어서 주차공간 걱정이 없다던데!?</li>
                                    <li>밥 배랑 디저트 배는 따로 있는거 알지!?</li>
                                    <li>커피 못 마셔도 걱정X! 에이드가 진짜 맛있거든!</li>
                                    <li>음료, 빵, 파스타, 피자, 스테이크도 있다던데!?</li>
                                    
                                 </ul>
                            </table>
                        </section>

                        <section class="item4">
                            <table>
                                <ul>
                                    <li>위치 : 고양시 일산동구 고양대로 1124</li>
                                    <li>운영시간 : 10:00~22:00</li>
                                    <li>홈페이지 : http://www.forestoutings.co.kr/</li>
                                    <li>문의 : 031-963-0500</li>
                                    <li>주차 : 주차장완비</li>
                                </ul>
                           </table>
                        </section>

                    </section>

                </section>


                

                

               
               
            </section>    
           
        </section>

        <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
    </main>
</body>
</html>