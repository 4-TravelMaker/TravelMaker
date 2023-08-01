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
    <link rel="stylesheet" href="${contextPath}/resources/css/Theme/ThemeTrainTrip.css">
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
                    <h2>칙칙폭폭!! 테마가 있는 기차 여행</h2>
                    <b>부산의 밤 풍경을 즐기는 여행(힐링코스)</b>
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
                            <img src="${contextPath}/resources/images/ThemeBoard/TrainTrip/TrainTripArt1.jpg">                                
                            <b>뮤지엄 원</b>
                        </div>
                        <div class="item">
                            <img src="${contextPath}/resources/images/ThemeBoard/TrainTrip/TrainTripDia1.jpg">
                            <b>다이아몬드 타워</b>
                        </div>
                        <div class="item">
                            <img src="${contextPath}/resources/images/ThemeBoard/TrainTrip/TrainTripDron1.jpg">
                            <b>드론 라이트쇼</b>
                        </div>
                        <div class="item">
                            <img src="${contextPath}/resources/images/ThemeBoard/TrainTrip/TrainTripTrain1.jpg">
                            <b>블루라인파크</b>
                        </div>
                    </section>  

                </section>
                <section class="container4">
                    <hr>
                </section>
                <section class="container5">
                   
                            <b>이런 분들에게 추천해 드립니다!</b>
                            <p>아름다운 동해 바다를 따라 움직이는 기차여행을 원하는 분</p>
                            <p>도시의 불빛을 한눈에 보면서 부산야경에 힐링 하실분</p>
                            <p>커플이라면 부산에서 꼭 가봐야 할곳만 추천 받고 싶은 분</p>
                    

                </section>
                <section class="container6">
                    <b>부산 여행</b>
                </section>

                <section class="container7">
                    <section class="container7-1">
                        <img src="${contextPath}/resources/images/ThemeBoard/TrainTrip/TrainTripSub.jpg">
                    </section>
                </section>

                <section class="container8">
                    <section class="container8-1">
                        <table>
                            <ul>
                                <li>부산여행에 해안절경을 보신적 있으세요?</li>
                                <li>사랑하는 연인 혹은 가족과 부산에서 좋은추억을 가져가보세요!</li>
                                <li>드론라이트 쇼는 꼭 보고 가셔야하는거 알죠!?</li>
                            </ul>
                        </table>

                    </section>
                    
                </section>
               
                <section class="container9">
                    <section class="container9-1">
                        <section class="item3">
                            <img src="${contextPath}/resources/images/ThemeBoard/TrainTrip/TrainTripArt2.jpg">
                        </section>
                        <section class="item3">
                            <img src="${contextPath}/resources/images/ThemeBoard/TrainTrip/TrainTripDia2.jpg">
                        </section>

                    </section>

                </section>

                <section class="container10">
                    <section class="container10-1">
                        <section class="item4">
                            <table>
                                <ul>
                                    <li>뮤지엄 원</li>
                                    <li>위치 : 부산광역시 해운대구 센텀서로 20</li>
                                    <li>이용시간 : 10:00~19:00</li>
                                    <li>이용요금 : 성인 18,000원 미성년 15,000원</li>
                                    <li>문의 : 051-731-3302</li>
                                </ul>
                            </table>
                        </section>

                        <section class="item4">
                            <table>
                                <ul>
                                    <li>부산다이아몬드 타워</li>
                                    <li>운영시간 : 10:00~22:00</li>
                                    <li>위치 : 부산광역시 중구 용두산길 37-55 </li>
                                    <li>문의 : 051-601-1800</li>
                                    <li>주차 : 공용주차장</li>
                                </ul>
                           </table>
                        </section>

                    </section>

                </section>

                <section class="container9">
                    <section class="container9-1">
                        <section class="item3">
                            <img src="${contextPath}/resources/images/ThemeBoard/TrainTrip/TrainTripDron2.jpg">
                        </section>
                        <section class="item3">
                            <img src="${contextPath}/resources/images/ThemeBoard/TrainTrip/TrainTripTrain2.jpg">
                        </section>

                    </section>

                </section>

                <section class="container10">
                    <section class="container10-1">
                        <section class="item4">
                            <table>
                                 <ul>
                                    <li>광안리M 드론 라이트쇼</li>
                                    <li>위치 : 부산광역시 수영구 광안해변로 219</li>
                                    <li>이용시간 : 매주 토요일 2회 공연</li>
                                    <li>문의 : 051-610-4882</li>
                                    <li>주차 : 공용주차장</li>
                                 </ul>
                            </table>
                        </section>

                        <section class="item4">
                            <table>
                                <ul>
                                    <li>해운대 블루라인파크</li>
                                    <li>위치 : 부산광역시 해운대구 청사포로 116</li>
                                    <li>이용시간 : 09:30~20:30</li>
                                    <li>문의 : 051-701-5548</li>
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