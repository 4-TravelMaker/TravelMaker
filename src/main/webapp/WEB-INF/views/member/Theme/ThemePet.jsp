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
    <link rel="stylesheet" href="${contextPath}/resources/css/Theme/ThemePet.css">
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
                    <h2>서울 근교 여행, 붉게 물드는 하늘을 감상하는 노을 명소 4</h2>
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
                            <img src="${contextPath}/resources/images/ThemeBoard/theme1/NodeulIslandmain.png">
                            <strong><h2>노들섬</h2></strong>
                                
                        </div>
                        <div class="item">
                            <img src="${contextPath}/resources/images/ThemeBoard/theme1/NamhanFortress.jpg">
                            <strong><h2>남한산성</h2></strong>
                        </div>
                        <div class="item">
                            <img src="${contextPath}/resources/images/ThemeBoard/theme1/BanpoHangangPark.jpg">
                            <strong><h2>반포한강공원</h2></strong>
                        </div>
                        <div class="item">
                            <img src="${contextPath}/resources/images/ThemeBoard/theme1/AchasanMountain.jpg">
                            <strong><h2>아차산</h2></strong>
                        </div>
                    </section>  

                </section>
                <section class="container4">
                    <hr>
                </section>
                <section class="container5">
                   
                            <b>이런 분들에게 추천해 드립니다!</b>
                            <p>붉게 물드는 노을을 감상하고 싶은 분</p>
                            <p>서울 근교에서 낭만을 즐기고 싶은 분</p>
                            <p>저녁 산책을 즐기고 싶은분</p>
                    

                </section>
                <section class="container6">
                    <b>노들섬</b>
                </section>

                <section class="container7">
                    <section class="container7-1">
                        <img src="${contextPath}/resources/images/ThemeBoard/theme1/NodeulIslandSubmain.jpg" alt="">
                    </section>
                </section>

                <section class="container8">
                    <section class="container8-1">
                        <table>
                            <ul>
                                <li>하루의 바쁜 일과를 끝내고,
                                    저마다의 이유로 바라보는 한강.
                                    그 중심엔, 노들섬이 있습니다.</li>
                                <li> 당신의 눈과 귀를 즐겁게 할
                                    노들섬의 새로운 시작.</li>
                                <li>음악과 미술이 함께하는
                                    노들섬에 오신 것을 환영합니다.</li>
                            </ul>
                        </table>

                    </section>
                    
                </section>
               
                <section class="container9">
                    <section class="container9-1">
                        <section class="item3">
                            <img src="${contextPath}/resources/images/ThemeBoard/theme1/NodeulIsland.jpg">
                        </section>
                        <section class="item3">
                            <img src="${contextPath}/resources/images/ThemeBoard/theme1/NodeulIslands.jpg">
                        </section>

                    </section>

                </section>

                <section class="container10">
                    <section class="container10-1">
                        <section class="item4">
                            <table>
                                 <ul>
                                    <li>위치 : 서울시 용산구 양녕로 445</li>
                                    <li>운영시간 : 24시간</li>
                                    <li>이용요금 : 무료</li>
                                    <li>문의 : 02-749-4500</li>
                                    <li>주차 : 공용주차장</li>
                                 </ul>
                            </table>
                        </section>

                        <section class="item4">
                            <table>
                                <ul>
                                    <li>위치 : 서울시 용산구 양녕로 445</li>
                                    <li>운영시간 : 24시간</li>
                                    <li>이용요금 : 무료</li>
                                    <li>문의 : 02-749-4500</li>
                                    <li>주차 : 공용주차장</li>
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