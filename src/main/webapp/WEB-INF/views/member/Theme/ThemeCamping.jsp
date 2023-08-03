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
    <link rel="stylesheet" href="${contextPath}/resources/css/Theme/ThemeTM.css">
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
                    <h2>맹방 비치 캠핑장</h2>
                    <b>BTS의 촬영지 & 캠핑의 성지</b>
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
                            <img src="${contextPath}/resources/images/ThemeBoard/Camping/camping1.jpg">
                            <b>맹방해수욕장</b>
                        </div>
                        <div class="item">
                            <img src="${contextPath}/resources/images/ThemeBoard/Camping/camping2.jpg">
                            <b>데크존</b>
                        </div>
                        <div class="item">
                            <img src="${contextPath}/resources/images/ThemeBoard/Camping/camping3.jpg">
                            <b>비치캠핑장</b>
                        </div>
                        <div class="item">
                            <img src="${contextPath}/resources/images/ThemeBoard/Camping/camping4.jpg">
                            <b>BTS 뮤비촬영지</b>
                        </div>
                    </section>  

                </section>
                <section class="container4">
                    <hr>
                </section>
                <section class="container5">
                   
                            <b>이런 분들에게 추천해 드립니다!</b>
                            <p>조용한 곳에서 캠핑을 즐기고 싶으신 분</p>
                            <p>BTS 촬영지를 방문해서 나도 BTS챌린지에 참여하고 싶은 분</p>
                            <p>시원한 파도 소리와 함께 탁트인 바닷길을 걷고 싶은 분</p>
                    

                </section>
                <section class="container6">
                    <b>맹방 비치 캠핑장</b>
                </section>

                <section class="container7">
                    <section class="container7-1">
                        <img src="${contextPath}/resources/images/ThemeBoard/Camping/campingSub.jpg">
                    </section>
                </section>

                <section class="container8">
                    <section class="container8-1">
                        <table>
                            <ul>
                                <li>시원한 파도를 볼수 있는 맹방해수욕장을 바로 앞에두고 있습니다!</li>
                                <li>민물과 바다가 연결되는 '강어귀'를 볼 수 있습니다!</li>
                                <li>캠핑족의 마음은 캠퍼만이 알 수 있죠? 캠퍼들을 위한 캠핑장!</li>
                            </ul>
                        </table>

                    </section>
                    
                </section>
               
                <section class="container9">
                    <section class="container9-1">
                        <section class="item3">
                            <img src="${contextPath}/resources/images/ThemeBoard/Camping/camping5.jpg">
                        </section>
                        <section class="item3">
                            <img src="${contextPath}/resources/images/ThemeBoard/Camping/camping6.jpg">
                        </section>

                    </section>

                </section>

                <section class="container10">
                    <section class="container10-1">
                        <section class="item4">
                            <table>
                                 <ul>
                                    <li>캠퍼의 마음은 캠퍼가 알아요!</li>
                                    <li>넓은 데크와 파쇄석 자리가 있어요!</li>
                                    <li>아이들을 위한 놀이터도 있어요!</li>
                                    <li>텐트간 거리가 보장되어 프라이빗 해요!</li>
                                 </ul>
                            </table>
                        </section>

                        <section class="item4">
                            <table>
                                <ul>
                                    <li>BTS의 뮤직비디오 촬영지에요!</li>
                                    <li>파도를 보는 재미가 있어요!</li>
                                    <li>해변을 걷기 좋아요!</li>
                                    <li>산림 안에 있어 한 여름에도 시원해요!</li>
                                </ul>
                           </table>
                        </section>

                    </section>

                </section>

                <section class="container9">
                    <section class="container9-1">
                        <section class="item3">
                            <img src="${contextPath}/resources/images/ThemeBoard/Camping/camping7.jpg">
                        </section>
                        <section class="item3">
                            <img src="${contextPath}/resources/images/ThemeBoard/Camping/camping8.jpg">
                        </section>

                    </section>

                </section>

                <section class="container10">
                    <section class="container10-1">
                        <section class="item4">
                            <table>
                                <ul>
                                    <li>조용히 분위기를 즐길수 있어요!</li>
                                    <li>매너타임 관리가 확실해요!</li>
                                    <li>캠핑이 어려우면 글램핑도 가능해요!</li>
                                    <li>자전거타기 좋아요!</li>
                                </ul>
                            </table>
                        </section>

                        <section class="item4">
                            <table>
                                <ul>
                                    <li>맹방비치캠핑장</li>
                                    <li>위치 : 삼척시 근덕면 하맹방리 산 1-7</li>
                                    <li>이용시간 : 24시간</li>
                                    <li>문의 : 033-802-8850</li>
                                    <li>예약사이트 : onda.me</li>
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