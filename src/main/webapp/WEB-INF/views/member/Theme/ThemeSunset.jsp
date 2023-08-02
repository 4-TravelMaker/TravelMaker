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
    <link rel="stylesheet" href="${contextPath}/resources/css/Theme/ThemeSunset.css">
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

                <br>
                <section class="container1">
                    <h2>서울 근교 여행, 붉게 물드는 하늘을 감상하는 노을 명소 4</h2>
                </section>
                <section class="container2">

                    <h4>조회수 ${detail.readCount}</h4>
                   
                </section>
                <br>
                <section class="container2-1">
                    <hr>
                </section>
                <section class="container3">
                    
                    <section class="flex_container1">
                        
                        <div class="item">
                            <img src="${contextPath}/resources/images/ThemeBoard/theme1/NodeulIslandmain.png">
                            <strong><h3>노들섬</h3></strong>   
                        </div>
                        <div class="item">
                            <img src="${contextPath}/resources/images/ThemeBoard/theme1/NamhanFortress.jpg">
                            <strong><h3>남한산성</h3></strong>
                        </div>
                        <div class="item">
                            <img src="${contextPath}/resources/images/ThemeBoard/theme1/BanpoHangangPark.jpg">
                            <strong><h3>반포한강공원</h3></strong>
                        </div>
                        <div class="item">
                            <img src="${contextPath}/resources/images/ThemeBoard/theme1/AchasanMountain.jpg">
                            <strong><h3>아차산</h3></strong>
                        </div>
                    </section>  

                </section>

                <section class="container4">
                    <hr>
                </section>
                <section class="container5">
                    <br>
                    <br>
                    <b>이런 분들에게 추천해 드립니다!</b>
                    <p>֎ 붉게 물드는 노을을 감상하고 싶은 분</p>
                    <p>֎ 서울 근교에서 낭만을 즐기고 싶은 분</p>
                    <p>֎ 저녁 산책을 즐기고 싶은 분</p>
                           <h4>⭐ 추천 장소 ⭐</h4>
                    <h4>노들섬, 남한산성, 반포 한강공원, 아차산</h4>

                </section>
                <br>
                <br>
                <br>
                <br>
                <br>
                <section class="container6">
                    노들섬
                </section>

                <section class="container7">
                    <section class="container7-1">
                        <img src="${contextPath}/resources/images/ThemeBoard/theme1/NodeulIslandSubmain.jpg" alt="">
                    </section>
                </section>

                <br>

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

                <br>
               
                <section class="container9">
                    <section class="container9-1">
                        <section class="item3">
                            <img src="${contextPath}/resources/images/ThemeBoard/Sunset/nodeul.jpg">
                        </section>
                        <section class="item3">
                            <img src="${contextPath}/resources/images/ThemeBoard/Sunset/namhansansung.jpg">
                        </section>

                    </section>

                </section>

                <section class="container10">
                    <section class="container10-1">
                        <section class="item4">
                            <table>
                                <ul>
                                    <li>※노들섬</li>
                                    <li>위치 : 서울시 용산구 양녕로 445</li>
                                    <li>운영시간 : 24시간</li>
                                    <li>이용요금 : 무료</li>
                                    <li>문의 : 02-749-4500</li>
                                   
                                 </ul>
                            </table>
                        </section>

                        <section class="item4">
                            <table>
                                <ul>
                                    <li>※남한산성</li>
                                    <li>위치 : 경기도 광주시 남한산성면 산성리 산23</li>
                                    <li>운영시간 : 24시간</li>
                                    <li>이용요금 : [남한산성 입장료] 무료</li>
                                    <li>문의 :  031-8008-5155</li>
                                   
                                </ul>
                           </table>
                        </section>

                    </section>

                </section>

                <br>

                <section class="container9">
                    <section class="container9-1">
                        <section class="item3">
                            <img src="${contextPath}/resources/images/ThemeBoard/Sunset/hangang.jpg">
                        </section>
                        <section class="item3">
                            <img src="${contextPath}/resources/images/ThemeBoard/Sunset/achasan.jpg">
                        </section>

                    </section>

                </section>

                <section class="container10">
                    <section class="container10-1">
                        <section class="item4">
                            <table>
                                 <ul>
                                    <li>※반포한강공원</li>
                                    <li>위치 : 서울특별시 서초구 신반포로11길 40 한강공원 반포 안내센터</li>
                                    <li>운영시간 : 24시간[연중무휴]</li>
                                    <li>이용요금 : 무료</li>
                                    <li>문의 : 반포 안내센터 02-3780-0541~3</li>
                                    <li>주차 : 공용주차장</li>
                                 </ul>
                            </table>
                        </section>

                        <section class="item4">
                            <table>
                                <ul>
                                    <li>※아차산</li>
                                    <li>위치 : 경기도 구리시 아천동</li>
                                    <li>운영시간 : 연중무휴 </li>
                                    <li>이용요금 : 무료</li>
                                    <li>문의 : 아차산 관리사무소 02-450-1655</li>
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