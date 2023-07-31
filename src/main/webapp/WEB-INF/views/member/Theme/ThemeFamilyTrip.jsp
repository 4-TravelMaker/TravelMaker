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
    <link rel="stylesheet" href="${contextPath}/resources/css/Theme/ThemeFamilyTrip.css">
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
                    <h2>서울 근교 여행, 아이와 나들이 떠나는 인천 여행 코스</h2>
                    <b>로봇랜드, 청라호수공원, 아라뱃길&아라폭포, 정서진중앙시장</b>
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
                            <img src="${contextPath}/resources/images/ThemeBoard/FamilyTrip/FamilyTripRobbot1.jpg">
                                
                        </div>
                        <div class="item">
                            <img src="${contextPath}/resources/images/ThemeBoard/FamilyTrip/FamilyTripAra1.jpg">
                        </div>
                        <div class="item">
                            <img src="${contextPath}/resources/images/ThemeBoard/FamilyTrip/FamilyTripMarket1.jpg">
                        </div>
                        <div class="item">
                            <img src="${contextPath}/resources/images/ThemeBoard/FamilyTrip/FamilyTripRiverPark1.jpg">
                        </div>
                    </section>  

                </section>
                <section class="container4">
                    <hr>
                </section>
                <section class="container5">
                   
                            <b>이런 분들에게 추천해 드립니다!</b>
                            <p>아이와 함께 나들이를 계획 중이신 분</p>
                            <p>가족과 함께 즐거운 추억을 쌓고 싶은 분</p>
                            <p>서울 근교 가까운 곳으로 여행을 떠나고 싶은 분</p>
                    

                </section>
                <section class="container6">
                    <b>노들섬</b>
                </section>

                <section class="container7">
                    <section class="container7-1">
                        <img src="${contextPath}/resources/images/ThemeBoard/FamilyTrip/FamilyTripSub.jpg" alt="">
                    </section>
                </section>

                <section class="container8">
                    <section class="container8-1">
                        <table>
                            <ul>
                                <li>어릴적 추억과 기억은 아이의 길잡이가 될 수 있어요.</li>
                                <li>사랑하는 아이와 가족과의 좋은 추억을 선사할 곳들</li>
                                <li>체험과 여유로움을 서울 근교에서 즐길수 있습니다.</li>
                            </ul>
                        </table>

                    </section>
                    
                </section>
               
                <section class="container9">
                    <section class="container9-1">
                        <section class="item3">
                            <img src="${contextPath}/resources/images/ThemeBoard/FamilyTrip/FamilyTripAra2.jpg">
                        </section>
                        <section class="item3">
                            <img src="${contextPath}/resources/images/ThemeBoard/FamilyTrip/FamilyTripMarket2.jpg">
                        </section>

                    </section>

                </section>

                <section class="container10">
                    <section class="container10-1">
                        <section class="item4">
                            <table>
                                 <ul>
                                    <li>아라뱃길&아라폭포</li>
                                    <li>계양구 둑실동26-12(아라폭포)</li>
                                    <li>운영시간 : 11:30~20:00</li>
                                    <li>이용요금 : 무료</li>
                                    <li>문의 : 1899-3650</li>
                                    <li>주차 : 자체주차장 가능</li>
                                 </ul>
                            </table>
                        </section>

                        <section class="item4">
                            <table>
                                <ul>
                                    <li>정서진중앙시장</li>
                                    <li>위치 : 인천광역시 서구 원창로 239번길 11</li>
                                    <li>운영시간 : 가게별로 상이</li>
                                    <li>문의 : 032-575-5002</li>
                                    <li>주차 : 공용주차장</li>
                                </ul>
                           </table>
                        </section>

                    </section>

                </section>

                <section class="container9">
                    <section class="container9-1">
                        <section class="item3">
                            <img src="${contextPath}/resources/images/ThemeBoard/FamilyTrip/FamilyTripRiverPark2.jpg">
                        </section>
                        <section class="item3">
                            <img src="${contextPath}/resources/images/ThemeBoard/FamilyTrip/FamilyTripRobbot2.jpg">
                        </section>

                    </section>

                </section>

                <section class="container10">
                    <section class="container10-1">
                        <section class="item4">
                            <table>
                                 <ul>
                                    <li>청라호수공원</li>
                                    <li>위치 : 인천광역시 서구 청라대로 204</li>
                                    <li>운영시간 : 24시간</li>
                                    <li>문의 : 032-456-2749</li>
                                    <li>주차 : 공용주차장 이용</li>
                                 </ul>
                            </table>
                        </section>

                        <section class="item4">
                            <table>
                                <ul>
                                    <li>로봇랜드</li>
                                    <li>위치 : 인천광역시 서구 로봇랜드로 155-11</li>
                                    <li>운영시간 : 화~토 09:30~17:20</li>
                                    <li>이용요금 : 무료</li>
                                    <li>문의 : 032-727-5050</li>
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