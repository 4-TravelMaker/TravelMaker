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
                    <h2>서퍼의 천국 양양에 서퍼들이 반한 맛집</h2>
                    <b>솜다리 버거</b>
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
                            <img src="${contextPath}/resources/images/ThemeBoard/FamousRestaurant/FamousRestaurantSomdari5.jpg">
                            <b>솜다리버거!</b>  
                        </div>
                        <div class="item">
                            <img src="${contextPath}/resources/images/ThemeBoard/FamousRestaurant/FamousRestaurantSomdari2.jpg">
                            <b>육즙팡팡!</b>
                        </div>
                        <div class="item">
                            <img src="${contextPath}/resources/images/ThemeBoard/FamousRestaurant/FamousRestaurantSomdari3.jpg">
                            <b>수제버거 맛집!</b>
                        </div>
                        <div class="item">
                            <img src="${contextPath}/resources/images/ThemeBoard/FamousRestaurant/FamousRestaurantSomdari6.jpg">
                            <b>뷰 맛집!</b>
                        </div>
                    </section>  

                </section>
                <section class="container4">
                    <hr>
                </section>
                <section class="container5">
                   
                            <b>이런 분들에게 추천해 드립니다!</b>
                            <p>수제버거를 좋아하고 미식에 진심인 분</p>
                            <p>서핑으로 많은 칼로리를 태우신 분</p>
                            <p>멋진 동해 바다뷰를 보며 입도 즐거움을 원하는 분</p>
                    

                </section>
                <section class="container6">
                    <b>솜다리버거</b>
                </section>

                <section class="container7">
                    <section class="container7-1">
                        <img src="${contextPath}/resources/images/ThemeBoard/FamousRestaurant/Sub.png" alt="">
                    </section>
                </section>

                <section class="container8">
                    <section class="container8-1">
                        <table>
                            <ul>
                                <li>부드러운 빵에 달콤하게 카라멜레이징 된 채소, 육즙 가득한 수제 버거</li>
                                <li>당신의 입과 눈을 즐겁게 만들어 드립니다.</li>
                                <li>아티크한 분위기에 넓은 바다를 보며 맛있는 수제버거를 먹어보세요!</li>
                            </ul>
                        </table>

                    </section>
                    
                </section>
               
                <section class="container9">
                    <section class="container9-1">
                        <section class="item3">
                            <img src="${contextPath}/resources/images/ThemeBoard/FamousRestaurant/FamousRestaurantSomdari1.jpg">
                        </section>
                        <section class="item3">
                            <img src="${contextPath}/resources/images/ThemeBoard/FamousRestaurant/FamousRestaurantSomdari8.jpg">
                        </section>

                    </section>

                </section>

                <section class="container10">
                    <section class="container10-1">
                        <section class="item4">
                            <table>
                                 <ul>
                                    <li>강원도의 명물인 해안도로 7번 국도!</li>
                                    <li>설악해변 앞에서 만나는 빨간색 건물!</li>
                                    <li>양양 솜다리 버거!</li>
                                    <li>패티가 무려 100% 한우!?</li>
                                    <li>맛에 대한 자신감으로 메뉴는 단 2가지!</li>
                                 </ul>
                            </table>
                        </section>

                        <section class="item4">
                            <table>
                                <ul>
                                    <li>매운양파를 좋아하지 않는 다면!?</li>
                                    <li>입맛에 맞춰 달콤한 익힌 양파로도 선택가능!</li>
                                    <li>한입 먹어보는 순간 다른 버거는 못먹을 걸!?</li>
                                    <li>밸런스 완벽한 수제버거를 찾는 다면!?</li>
                                    <li>솜다리 버거!</li>
                                </ul>
                           </table>
                        </section>

                    </section>

                </section>

                <section class="container9">
                    <section class="container9-1">
                        <section class="item3">
                            <img src="${contextPath}/resources/images/ThemeBoard/FamousRestaurant/FamousRestaurantSomdari7.jpg">
                        </section>
                        <section class="item3">
                            <img src="${contextPath}/resources/images/ThemeBoard/FamousRestaurant/FamousRestaurantSomdari4.jpg">
                        </section>

                    </section>

                </section>

                <section class="container10">
                    <section class="container10-1">
                        <section class="item4">
                            <table>
                                 <ul>
                                    <li>아담한 건물이지만 맛은 아담하지 않죠!?</li>
                                    <li>안에 분위기는 엔티크!</li>
                                    <li>눈에 보이는 뷰는 시원한 바다뷰!</li>
                                    <li>아기자기한 소품들은 분위기를 즐기기에 충분!</li>
                                    <li> 수제버거 먹고 바다 산책 하고 가는건 꿀팁!?</li>
                                 </ul>
                            </table>
                        </section>

                        <section class="item4">
                            <table>
                                <ul>
                                    <li>양양 솜다리 버거</li>
                                    <li>위치 : 강원 양양군 강현면 동해대로 3246</li>
                                    <li>이용시간 : 10:30~19:30 매주 수요일 휴무</li>
                                    <li>문의 : 033-672-3171</li>
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