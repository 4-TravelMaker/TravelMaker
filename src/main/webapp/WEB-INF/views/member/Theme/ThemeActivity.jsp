<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- 문자열 관련 함수(메소드) 제공 JSTL (EL 형식으로 작성) --%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TravelMakerThemeActivity</title>
    <link rel="shortcut icon" type="image/x-icon" href="image/small_logo.png">
    <link rel="stylesheet" href="${contextPath}/resources/css/Theme/ThemeActivity.css">
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
                    <h2>하동 알프스 짚와이어</h2>
                    <b>다도해의 아름다운 경치를 하늘에서 짜릿하게!</b>
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
                            <img src="${contextPath}/resources/images/ThemeBoard/Activity/Activity1.jpg">
                            
                                
                        </div>
                        <div class="item">
                            <img src="${contextPath}/resources/images/ThemeBoard/Activity/Activity2.jpg">
                            
                        </div>
                        <div class="item">
                            <img src="${contextPath}/resources/images/ThemeBoard/Activity/Activity3.jpg">
                            
                        </div>
                        <div class="item">
                            <img src="${contextPath}/resources/images/ThemeBoard/Activity/Activity4.jpg">
                            
                        </div>
                    </section>  

                </section>
                <section class="container4">
                    <hr>
                </section>
                <section class="container5">
                   
                            <b>이런 분들에게 추천해 드립니다!</b>
                            <p>아름다운 경치를 하늘에서 짜릿하게 보고싶은 분</p>
                            <p>하동에 다도해를 한눈에 보고싶은 분</p>
                            <p>무더위를 날려버릴 짜릿한 속도감을 느끼고 싶은분</p>
                    

                </section>
                <section class="container6">
                    <b>하동 짚와이어</b>
                </section>

                <section class="container7">
                    <section class="container7-1">
                        <img src="${contextPath}/resources/images/ThemeBoard/Activity/ActivitySubMain.jpg">
                    </section>
                </section>

                <section class="container8">
                    <section class="container8-1">
                        <table>
                            <ul>
                                <li>하동 짚라인은 금오산 정산에서 
                                    당신을 기다리고 있습니다.</li>
                                <li>아시아 최대 길이의 짚라인을 경험하고 싶은 분들께 추천합니다.</li>
                                <li>한여름의 무더위를 날리고 스릴을 즐기는 건 어떤가요?</li>
                            </ul>
                        </table>

                    </section>
                    
                </section>
               
                <section class="container9">
                    <section class="container9-1">
                        <section class="item3">
                            <img src="${contextPath}/resources/images/ThemeBoard/Activity/ActivitySub1.png">
                        </section>
                        <section class="item3">
                            <img src="${contextPath}/resources/images/ThemeBoard/Activity/ActivitySub2.png">
                        </section>

                    </section>

                </section>

                <section class="container10">
                    <section class="container10-1">
                        <section class="item4">
                            <table>
                                 <ul>
                                    <li>하동 짚라인 특징!</li>
                                    <li>금오산 정상에서 출발!</li>
                                    <li>높이가 무려 875m!?!?</li>
                                    <li>아니 아시아에서 최고 거리라고!??</li>
                                    <li>내려가는 속도가.. 120km요??</li>
                                 </ul>
                            </table>
                        </section>

                        <section class="item4">
                            <table>
                                <ul>
                                    <li>사랑하는 연인과 함께!</li>
                                    <li>친구들과 우정 쌓기!</li>
                                    <li>사랑하는 가족과 함께!</li>
                                    <li>하동에서 제일 유명하지!?</li>
                                    <li>꿈잼 액티비티를 원하는 분!</li>
                                </ul>
                           </table>
                        </section>

                    </section>

                </section>

                <section class="container9">
                    <section class="container9-1">
                        <section class="item3">
                            <img src="${contextPath}/resources/images/ThemeBoard/Activity/ActivitySub3.png">
                        </section>
                        <section class="item3">
                            <img src="${contextPath}/resources/images/ThemeBoard/Activity/ActivityMap.png">
                        </section>

                    </section>

                </section>

                <section class="container10">
                    <section class="container10-1">
                        <section class="item4">
                            <table>
                                 <ul>
                                    <li>이용요금 평일 / 주말</li>
                                    <li>성인 40,000원 / 45,000원</li>
                                    <li>청소년 35,000원 / 40,000원</li>
                                    <li>어린이 30,000원 / 35,000원</li>                                   
                                 </ul>
                            </table>
                        </section>

                        <section class="item4">
                            <table>
                                <ul>
                                    <li>위치 : 경남 하동군 금날면 경충로 493-37</li>
                                    <li>운영시간 : 08:30~17:00</li>
                                    <li>체험프로그램 : 짚와이어, 빅스윙, 퀵점프</li>
                                    <li>문의 : 055-884-7715</li>
                                    <li>주차 : 주차 가능</li>
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