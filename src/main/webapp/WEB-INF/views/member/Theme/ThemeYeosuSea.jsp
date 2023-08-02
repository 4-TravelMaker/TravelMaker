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
                    <h2>전남 여행, 푸른 물결을 다양하게 즐기는 여수여행</h2>
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
                            <img src="${contextPath}/resources/images/ThemeBoard/Yeosu/odongdo.jpg">
                            <strong><h3>오동도</h3></strong>   
                        </div>
                        <div class="item">
                            <img src="${contextPath}/resources/images/ThemeBoard/Yeosu/hangilam.jpg">
                            <strong><h3>항일암</h3></strong>
                        </div>
                        <div class="item">
                            <img src="${contextPath}/resources/images/ThemeBoard/Yeosu/mansungli.jpg">
                            <strong><h3>만성리해수욕장</h3></strong>
                        </div>
                        <div class="item">
                            <img src="${contextPath}/resources/images/ThemeBoard/Yeosu/dolsanpark.jpg">
                            <strong><h3>돌산공원</h3></strong>
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
                    <p>֎ 푸른 바다를 즐기고 싶은 분</p>
                    <p>֎ 여수 여행을 계획하고 계신 분</p>
                    <p>֎ 보기만 해도 시원한 풍경을 보고 싶은 분</p>
                                <br>
                           ⭐ 추천 장소 ⭐
                                <br>
                    <h4>오동도, 향일암, 만성리해수욕장, 돌산공원</h4>

                </section>
                <br>
                <br>
                <br>
                <section class="container6">
                    <h4>오동도</h4>
                </section>

                <section class="container7">
                    <section class="container7-1">
                        <img src="${contextPath}/resources/images/ThemeBoard/Yeosu/odongdo1.jpg" alt="">
                    </section>
                </section>

                <br>

                <section class="container8">
                    <section class="container8-1">
                        <table>
                            <ul>
                                <li>오동도는 멀리서 보면 오동잎을 닮아 이름 지어진 섬으로, 
                                    섬 전체에 동백나무가 빼곡해 동백섬으로 불리기도 합니다.</li>
                                <li>오동도에 도착을 하면 다양한 선율의 음악 분수, 하얀 등대, 
                                    거북선·판옥선 모형 등 다양한 볼거리가 있습니다. </li>
                                <li> 특히 해안을 중심으로 순환산책로가 조성되어 있어 
                                    다양한 기암절벽과 수려한 해안절경을 마주할 수 있습니다.</li>
                            </ul>
                        </table>

                    </section>
                    
                </section>

                <br>
               
                <section class="container9">
                    <section class="container9-1">
                        <section class="item3">
                            <img src="${contextPath}/resources/images/ThemeBoard/Yeosu/odongdo2.jpg">
                        </section>
                        <section class="item3">
                            <img src="${contextPath}/resources/images/ThemeBoard/Yeosu/hangilam1.jpg">
                        </section>

                    </section>

                </section>

                <section class="container10">
                    <section class="container10-1">
                        <section class="item4">
                            <table>
                                <ul>
                                    <li>※오동도</li>
                                    <li>위치 : 전라남도 여수시 수정동 산1-11</li>
                                    <li>운영시간 : 연중무휴</li>
                                    <li>이용요금 : 무료</li>
                                    <li>문의 : 061-659-5708</li>
                                   
                                 </ul>
                            </table>
                        </section>

                        <section class="item4">
                            <table>
                                <ul style="width:450px;">
                                    <li>※항일암</li>
                                    <li>위치 : 전라남도 여수시 돌산읍 향일암로 60 종무소</li>
                                    <li>운영시간 : 연중무휴</li>
                                    <li>이용요금 : 성인 2,500원 / 미취학어린이/만65세이상 무료</li>
                                    <li>주차 : 공영 주차장 이용</li>
                                </ul>
                           </table>
                        </section>

                    </section>

                </section>

                <section class="container9">
                    <section class="container9-1">
                        <section class="item3">
                            <img src="${contextPath}/resources/images/ThemeBoard/Yeosu/mansungli1.jpg">
                        </section>
                        <section class="item3">
                            <img src="${contextPath}/resources/images/ThemeBoard/Yeosu/dolsanpark1.jpg">
                        </section>

                    </section>

                </section>

                <section class="container10">
                    <section class="container10-1">
                        <section class="item4">
                            <table>
                                 <ul>
                                    <li>※만성리해수욕장</li>
                                    <li>위치 : 전라남도 여수시 만흥동</li>
                                    <li>운영시간 : 연중무휴</li>
                                    <li>이용요금 : 무료</li>
                                    <li>문의 : 061-659-5696</li>
                                    <li>주차 : 자체 주차장 이용</li>
                                 </ul>
                            </table>
                        </section>

                        <section class="item4">
                            <table>
                                <ul>
                                    <li>※돌산공원</li>
                                    <li>위치 : 전라남도 여수시 돌산읍 우두리 산355-1</li>
                                    <li>운영시간 : 연중무휴 </li>
                                    <li>이용요금 : 무료</li>
                                    <li>문의 : 061-643-1781</li>
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