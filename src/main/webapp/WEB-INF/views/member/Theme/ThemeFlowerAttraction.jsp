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
                    <h2>6월 꽃구경, 몽글몽글 피어난 수국 명소 4</h2>
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
                            <img src="${contextPath}/resources/images/ThemeBoard/Flower/gongju.jpg">
                            <strong><h3>공주 유구 색동수국정원</h3></strong>   
                        </div>
                        <div class="item">
                            <img src="${contextPath}/resources/images/ThemeBoard/Flower/hubgarden.jpg">
                            <strong><h3>태안 팜카밀레 허브정원</h3></strong>
                        </div>
                        <div class="item">
                            <img src="${contextPath}/resources/images/ThemeBoard/Flower/graceGradem.jpg">
                            <strong><h3>경남 고성 그레이스 정원</h3></strong>
                        </div>
                        <div class="item">
                            <img src="${contextPath}/resources/images/ThemeBoard/Flower/sukkuk.jpg">
                            <strong><h3>제주 마노르블랑</h3></strong>
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
                    <p>֎ 6월의 꽃이 궁금하신 분</p>
                    <p>֎ 몽글몽글한 수국을 보고 싶은 분</p>
                    <p>֎ 연휴 기간 가볼 만한 곳을 찾는 분</p>
                            <h4>⭐ 추천 장소 ⭐</h4>
                    <h4>공주 유구 색동수국정원, 태안 팜카밀레 허브정원, 경남 고성 그레이스정원, 제주 마노르블랑</h4>

                </section>
                <br>
                <br>
                <br>
                <br>
                <br>
                <section class="container6">
                    제주 마노르블랑
                    
                </section>

                <section class="container7">
                    <section class="container7-1">
                        <img src="${contextPath}/resources/images/ThemeBoard/Flower/sukkuk2.jpg" alt="">
                    </section>
                </section>

                <br>

                <section class="container8">
                    <section class="container8-1">
                        <table>
                            <ul>
                                <li>마노르블랑은 최남단인 제주도에 있어 우리나라에서 가장 먼저 수국을 볼 수 있는 곳입니다.</li>
                                <li>이곳은 계절마다 다른 꽃을 심어 수국 이외에도 사계절 내내 다양한 종류의 꽃들을 만날 수 있는데요.</li>
                                <li>사계앞바다가 보이는 색다른 풍경을 가지고 있어 인생 사진을 남기기 좋습니다. 산책로를 따라 곳곳에 놓인 포토존에서 소중한 추억을 남겨보세요.</li>
                            </ul>
                        </table>

                    </section>
                    
                </section>

                <br>
                <br>
                
               
                <section class="container9">
                    <section class="container9-1">
                        <section class="item3">
                            <img src="${contextPath}/resources/images/ThemeBoard/Flower/gongju1.jpg">
                        </section>
                        <section class="item3">
                            <img src="${contextPath}/resources/images/ThemeBoard/Flower/sukkuk1.jpg">
                        </section>

                    </section>

                </section>

                <section class="container10">
                    <section class="container10-1">
                        <section class="item4">
                            <table>
                                <ul style="width: 450px;">
                                    <li>※  유구 색동수국정원</li>
                                    <li>위치 :  충청남도 공주시 유구읍 창말길 44</li>
                                    <li>운영시간 : 연중무휴</li>
                                    <li>이용요금 : 무료</li>
                                    <li>문의 : 공주시 콜센터 041-840-3800</li>
                                   
                                 </ul>
                            </table>
                        </section>

                        <section class="item4">
                            <table>
                                <ul style="width:500px;">
                                    <li>※ 팜카밀레</li>
                                    <li>위치 :충청남도 태안군 남면 우운길 56-19</li>
                                    <li>운영시간:[4월~11월] 매일 09:00~18:00 [12월~3월] 매일 09:00~17:00</li>
                                    <li>문의 : 041-675-3636</li>
                                    <li>주차 : 자체 주차장 이용</li>
                                </ul>
                           </table>
                        </section>

                    </section>

                </section>

                <br>

                <section class="container9">
                    <section class="container9-1">
                        <section class="item3">
                            <img src="${contextPath}/resources/images/ThemeBoard/Flower/graceGradem1.jpg">
                        </section>
                        <section class="item3">
                            <img src="${contextPath}/resources/images/ThemeBoard/Flower/sukkuk1.jpg">
                        </section>

                    </section>

                </section>

                <section class="container10">
                    <section class="container10-1">
                        <section class="item4">
                            <table>
                                 <ul style="width: 470px;">
                                    <li>※  그레이스정원</li>
                                    <li>위치 : 경상남도 고성군 상리면 삼상로 1312-71</li>
                                    <li>운영시간 : 월~일요일 09:00~18:00 (입장 마감 17:00) </li>
                                    <li>이용요금 : 성인 5,000원 / 중·고등학생, 경로 4,000원</li>
                                    <li>문의 : 055-673-1803</li>
                                    <li>주차 : 자체 주차장 이용</li>
                                 </ul>
                            </table>
                        </section>

                        <section class="item4">
                            <table>
                                <ul style="width: 450px;">
                                    <li>※  마노르블랑 수국축제</li>
                                    <li>위치 :제주특별자치도 서귀포시 안덕면 일주서로2100번길 46</li>
                                    <li>운영시간 : 매일 09:00~18:30 </li>
                                    <li>이용요금 : 성인 5,500원 / 초·중·고등학생 4,000원</li>
                                    <li>문의 : 064-794-0999</li>
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