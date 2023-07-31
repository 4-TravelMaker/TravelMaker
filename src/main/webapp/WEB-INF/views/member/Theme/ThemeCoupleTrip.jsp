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
    <link rel="stylesheet" href="${contextPath}/resources/css/ThemePlaceNodeul.css">
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
                    <h2>날 풀리기만 기다렸다면!? 김해로 커플여행 가즈앙!</h2>
                    <b>클레이아크, 봉리단길, 테마파크, 김해천문대</b>
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
                            <img src="../../resources/images/ThemeBoard/CoupleTrip/CoupleTripArt1.jpg">
                                
                        </div>
                        <div class="item">
                            <img src="../../resources/images/ThemeBoard/CoupleTrip/CoupleTripBongridan1.jpg">
                        </div>
                        <div class="item">
                            <img src="../../resources/images/ThemeBoard/CoupleTrip/CoupleTripSky1.jpg">
                        </div>
                        <div class="item">
                            <img src="../../resources/images/ThemeBoard/CoupleTrip/CoupleTripThemePark1.jpg">
                        </div>
                    </section>  

                </section>
                <section class="container4">
                    <hr>
                </section>
                <section class="container5">
                   
                            <b>이런 커플들에게 추천해 드립니다!</b>
                            <p>로맨틱한 여행코스로 행복한 추억을 남길 커플들</p>
                            <p>미술관부터 맛집이 가득한 거리</p>
                            <p>별을 볼수 있는 천문대까지 모두 추천해드립니다!</p>
                    

                </section>
                <section class="container6">
                    <b>김해커플여행</b>
                </section>

                <section class="container7">
                    <section class="container7-1">
                        <img src="../../resources/images/ThemeBoard/CoupleTrip/CoupleTripSub.jpg">
                    </section>
                </section>

                <section class="container8">
                    <section class="container8-1">
                        <table>
                            <ul>
                                <li>사랑하는 연인과의 로맨틱함을 원하시나요?</li>
                                <li>로맨틱함 뒤에 숨은 서로의 미래를 그려 보고 싶으신 가요?</li>
                                <li>미술관 부터 마지막 별자리를 보며 대화해 보는건 어떠세요?</li>
                            </ul>
                        </table>

                    </section>
                    
                </section>
               
                <section class="container9">
                    <section class="container9-1">
                        <section class="item3">
                            <img src="../../resources/images/ThemeBoard/CoupleTrip/CoupleTripArt2.jpg">
                        </section>
                        <section class="item3">
                            <img src="../../resources/images/ThemeBoard/CoupleTrip/CoupleTripBongridan2.jpg">
                        </section>

                    </section>

                </section>

                <section class="container10">
                    <section class="container10-1">
                        <section class="item4">
                            <table>
                                 <ul>
                                    <li>클레이아크 미술관</li>
                                    <li>위치: 경남 김해시 진례면 진례로 275-51</li>
                                    <li>이용요금 : 2000원</li>
                                    <li>운영시간 : 10시~18시 //  매주 월요일 휴관</li>
                                    <li>주차 : 무료주차장</li>
                                 </ul>
                            </table>
                        </section>

                        <section class="item4">
                            <table>
                                <ul>
                                    <li>김해 봉리단길</li>
                                    <li>위치 : 김해대로 2273 회현동 일대</li>
                                    <li>주차 : 공용주차장</li>
                                    <li>가볼만한 곳 : 봉황 1935, 하라식당, 낙도맨션</li>
                                    
                                </ul>
                           </table>
                        </section>

                    </section>

                </section>

                <section class="container9">
                    <section class="container9-1">
                        <section class="item3">
                            <img src="../../resources/images/ThemeBoard/CoupleTrip/CoupleTripSky2.jpg">
                        </section>
                        <section class="item3">
                            <img src="../../resources/images/ThemeBoard/CoupleTrip/CoupleTripThemePark2.jpg">
                        </section>

                    </section>

                </section>

                <section class="container10">
                    <section class="container10-1">
                        <section class="item4">
                            <table>
                                 <ul>
                                    <li>김해 천문대</li>
                                    <li>위치 : 김해시 가야테마길 254(어방동)</li>
                                    <li>이용요금 : 성인 4,000원, 미성년 3,000원</li>
                                    <li>운영시간 : 14:00~ 22:00 매달 첫주 월요일 휴관</li>
                                    <li>주차 : 공용주차장</li>
                                 </ul>
                            </table>
                        </section>

                        <section class="item4">
                            <table>
                                <ul>
                                    <li>가야테마파크</li>
                                    <li>위치 : 가야테마길 161(어방동)</li>
                                    <li>운영시간 : 09:30~18:00 </li>
                                    <li>이용요금 : 5,000원</li>
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