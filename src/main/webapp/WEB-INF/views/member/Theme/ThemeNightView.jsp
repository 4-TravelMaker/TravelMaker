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
                    <h2>인천 여행, 선선한 저녁에 즐기는 인천 야경 명소 4</h2>
                </section>
                <section class="container2">

                    <h4>좋아요 0    조회수 0 </h4>
                   
                </section>
                <br>
                <section class="container2-1">
                    <hr>
                </section>
                <section class="container3">
                    
                    <section class="flex_container1">
                        
                        <div class="item">
                            <img src="${contextPath}/resources/images/ThemeBoard/nightView/songdo1.jpg">
                            <strong><h3>송도센트럴파크</h3></strong>   
                        </div>
                        <div class="item">
                            <img src="${contextPath}/resources/images/ThemeBoard/nightView/subongpark.jpg">
                            <strong><h3>수봉공원</h3></strong>
                        </div>
                        <div class="item">
                            <img src="${contextPath}/resources/images/ThemeBoard/nightView/bustour.jpg">
                            <strong><h3>인천시티투어</h3></strong>
                        </div>
                        <div class="item">
                            <img src="${contextPath}/resources/images/ThemeBoard/nightView/triplestreet.jpg">
                            <strong><h3>트리플스트리트</h3></strong>
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
                    <p>֎ 선선한 저녁 여행을 즐기고 싶은 분</p>
                    <p>֎ 알록달록한 밤의 모습을 보고 싶은 분</p>
                    <p>֎ 서울 근교로 여행을 가고 싶은 분</p>
                                <br>
                           ⭐ 추천 코스 ⭐
                                <br>
                    <h4>송도센트럴파크, 수봉공원, 인천시티투어, 트리플스트리트</h4>

                </section>
                <br>
                <br>
                <br>
                <section class="container6">
                    <h4>송도센트럴파크</h4>
                </section>

                <section class="container7">
                    <section class="container7-1">
                        <img src="${contextPath}/resources/images/ThemeBoard/nightView/songdo2.jpg" alt="">
                    </section>
                </section>

                <br>

                <section class="container8">
                    <section class="container8-1">
                        <table>
                            <ul>
                                <li>송도센트럴파크는 바닷물을 이용한 해수공원이자 
                                    한국의 지형적 특성을 살린 도시공원입니다</li>
                                <li> 밤이 되면 주변 빌딩들의 불빛과 색색깔의 
                                    빛을 내는 공원 조명이 더해져 아름다운 야경을 감상하고</li>
                                <li>낮과 다른 매력을 가진 저녁에 선선한 바람을 만끽하며
                                     도심의 화려한 모습을 담아보세요</li>
                            </ul>
                        </table>

                    </section>
                    
                </section>

                <br>
               
                <section class="container9">
                    <section class="container9-1">
                        <section class="item3">
                            <img src="${contextPath}/resources/images/ThemeBoard/nightView/songdo3.jpg">
                        </section>
                        <section class="item3">
                            <img src="${contextPath}/resources/images/ThemeBoard/nightView/subongpark1.jpg">
                        </section>

                    </section>

                </section>

                <section class="container10">
                    <section class="container10-1">
                        <section class="item4">
                            <table>
                                <ul>
                                    <li>※송도센트럴파크</li>
                                    <li>위치 : 인천광역시 연수구 컨벤시아대로 160</li>
                                    <li>운영시간 : 연중무휴</li>
                                    <li>이용요금 : 무료</li>
                                    <li>문의 : 032-456-2860</li>
                                   
                                 </ul>
                            </table>
                        </section>

                        <section class="item4">
                            <table>
                                <ul>
                                    <li>※수봉공원</li>
                                    <li>위치 : 인천광역시 미추홀구 수봉안길 84</li>
                                    <li>운영시간 : 연중무휴</li>
                                    <li>주차 : 공영 주차장 이용</li>
                                    <li>이용요금 : 무료</li>
                                   
                                </ul>
                           </table>
                        </section>

                    </section>

                </section>

                <section class="container9">
                    <section class="container9-1">
                        <section class="item3">
                            <img src="${contextPath}/resources/images/ThemeBoard/nightView/bustour1.jpg">
                        </section>
                        <section class="item3">
                            <img src="${contextPath}/resources/images/ThemeBoard/nightView/triplestreet1.jpg">
                        </section>

                    </section>

                </section>

                <section class="container10">
                    <section class="container10-1">
                        <section class="item4">
                            <table>
                                 <ul>
                                    <li>※인천종합관광안내소</li>
                                    <li>위치 : 인천광역시 연수구 인천타워대로 234 1층 인천종합관광안내소</li>
                                    <li>운영시간 : 24시간[연중무휴]</li>
                                    <li>이용요금 : 성인 10,000원 , 소인&경로 8,000원</li>
                                    <li>문의 : 1899-0960</li>
                                    <li>주차 : 공용주차장</li>
                                 </ul>
                            </table>
                        </section>

                        <section class="item4">
                            <table>
                                <ul>
                                    <li>※트리플스트리트</li>
                                    <li>위치 : 인천광역시 연수구 송도과학로16번길 33-1</li>
                                    <li>운영시간 : 10:30~22:00 </li>
                                    <li>이용요금 : 가게별로 상이</li>
                                    <li>문의 : 032-310-9400, 032-310-9500</li>
                                    <li>주차 : 자체 주차장 이용</li>
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