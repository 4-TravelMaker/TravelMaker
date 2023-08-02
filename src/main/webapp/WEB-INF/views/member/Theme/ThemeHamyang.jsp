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
                    <h2>경남 여행, 자연을 다채로운 방법으로 즐기는 함안 여행</h2>
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
                            <img src="${contextPath}/resources/images/ThemeBoard/hamyang/imgokpark.jpg">
                            <strong><h3>입곡군립공원</h3></strong>   
                        </div>
                        <div class="item">
                            <img src="${contextPath}/resources/images/ThemeBoard/hamyang/movingbote.jpg">
                            <strong><h3>아라힐링무빙보트</h3></strong>
                        </div>
                        <div class="item">
                            <img src="${contextPath}/resources/images/ThemeBoard/hamyang/mujinjung.jpg">
                            <strong><h3>무진정</h3></strong>
                        </div>
                        <div class="item">
                            <img src="${contextPath}/resources/images/ThemeBoard/hamyang/akyangpark.jpg">
                            <strong><h3>악양생태공원</h3></strong>
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
                    <p>֎ 가족과 여름휴가를 계획하고 계신 분</p>
                    <p>֎ 액티비티를 즐기고 싶은 분</p>
                    <p>֎ 자연을 다채롭게 즐기고 싶은 분</p>
                           <h4>⭐ 추천 장소 ⭐</h4>
                    <h4>입곡군립공원, 아라힐링 무빙보트, 무진정, 악양생태공원</h4>

                </section>
                <br>
                <br>
                <br>
                <br>
                <br>
                <section class="container6">
                    입곡군립공원
                </section>

                <section class="container7">
                    <section class="container7-1">
                        <img src="${contextPath}/resources/images/ThemeBoard/hamyang/imgokpark1.jpg" alt="">
                    </section>
                </section>

                <br>

                <section class="container8">
                    <section class="container8-1">
                        <table>
                            <ul>
                                <li>입곡군립공원은 입곡저수지 상류에 자연 생태를 그대로 보존하여 만들어진 공간입니다.</li>
                                <li>저수지를 중심으로 왼쪽에는 깎아지른 절벽에 우거진 송림이, 
                                    오른쪽으로는 완만한 경사지에 활엽수림과 침엽수림이 멋진 조화를 이루고 있는 곳인데요. </li>
                                <li> 다양한 액티비티 시설과 산책로가 있어 다채롭게 즐길 수 있는 이곳에 방문해 보세요.</li>
                            </ul>
                        </table>

                    </section>
                    
                </section>

                <br>
                <br>
               
                <section class="container9">
                    <section class="container9-1">
                        <section class="item3">
                            <img src="${contextPath}/resources/images/ThemeBoard/hamyang/imgokpark2.jpg">
                        </section>
                        <section class="item3">
                            <img src="${contextPath}/resources/images/ThemeBoard/hamyang/movingbote1.jpg">
                        </section>

                    </section>

                </section>

                <section class="container10">
                    <section class="container10-1">
                        <section class="item4">
                            <table>
                                <ul>
                                    <li>※입곡군립공원</li>
                                    <li>위치 : 경상남도 함안군 산인면 입곡리 산59</li>
                                    <li>운영시간 : 연중무휴</li>
                                    <li>이용요금 : 무료</li>
                                    <li>문의 : 061-659-5708</li>
                                   
                                 </ul>
                            </table>
                        </section>

                        <section class="item4">
                            <table>
                                <ul style="width:450px;">
                                    <li>※아라힐링카페</li>
                                    <li>위치 : 경상남도 함안군 산인면 입곡공원길 225</li>
                                    <li>운영시간 : 화~일요일 10:00~18:00 (휴식 시간 11:30~12:10, 15:00~15:30) / 매주 월요일, 설·추석 당일 휴무</li>
                                    <li>문의 : 아라힐링카페(무빙보트, 아라힐링사이클) 055-580-4596</li>
                                </ul>
                           </table>
                        </section>

                    </section>

                </section>

                <br>

                <section class="container9">
                    <section class="container9-1">
                        <section class="item3">
                            <img src="${contextPath}/resources/images/ThemeBoard/hamyang/mujinjung1.jpg">
                        </section>
                        <section class="item3">
                            <img src="${contextPath}/resources/images/ThemeBoard/hamyang/akyangpark1.jpg">
                        </section>

                    </section>

                </section>

                <section class="container10">
                    <section class="container10-1">
                        <section class="item4">
                            <table>
                                 <ul>
                                    <li>※ 무진정</li>
                                    <li>위치 : 경상남도 함안군 함안면 괴산리</li>
                                    <li>운영시간 : 연중무휴</li>
                                    <li>이용요금 : 무료</li>
                                    <li>문의 : 055-580-2551</li>
                                    <li>주차 : 자체 주차장 이용</li>
                                 </ul>
                            </table>
                        </section>

                        <section class="item4">
                            <table>
                                <ul>
                                    <li>※ 악양생태공원</li>
                                    <li>위치 : 경상남도 함안군 대산면 서촌리 1418</li>
                                    <li>운영시간 : 연중무휴 </li>
                                    <li>이용요금 : 무료</li>
                                    <li>문의 : 055-580-3421</li>
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