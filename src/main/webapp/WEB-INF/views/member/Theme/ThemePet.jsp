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
    <link rel="stylesheet" href="${contextPath}/resources/css/Theme/ThemePet.css">
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
                    <h2>댕댕이도 같이여행 하개!</h2>
                    <b>태안여행, 태안 애견펜션(하늘지기펜션)</b>
                    
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
                            <img src="${contextPath}/resources/images/ThemeBoard/Pet/pet1.jpg">
                        </div>
                        <div class="item">
                            <img src="${contextPath}/resources/images/ThemeBoard/Pet/pet2.jpg">
                        </div>
                        <div class="item">
                            <img src="${contextPath}/resources/images/ThemeBoard/Pet/pet3.jpg">
                        </div>
                        <div class="item">
                            <img src="${contextPath}/resources/images/ThemeBoard/Pet/pet4.jpg">
                        </div>
                    </section>  

                </section>
                <section class="container4">
                    <hr>
                </section>
                <section class="container5">
                   
                            <b>이런 분들에게 추천해 드립니다!</b>
                            <p>반려견과 함께 여행을 가고싶으신 분</p>
                            <p>반려견과 편안하게 힐링이 필요하신 분</p>
                            <p>눈치보지 않고 반려견과 걷고싶으신 분</p>
                    

                </section>
                <section class="container6">
                    <b>하늘지기펜션</b>
                </section>

                <section class="container7">
                    <section class="container7-1">
                        <img src="${contextPath}/resources/images/ThemeBoard/Pet/petsub.jpg">
                    </section>
                </section>

                <section class="container8">
                    <section class="container8-1">
                        <table>
                            <ul>
                                <li>반려견 인구 천만시대에 
                                    이뻐하는 반려견과 여행을 가고싶으신가요?</li>
                                <li>당신과 반려견의 좋은 추억을 만들수 있어요!</li>
                                <li>편안하게 눈치보지 않고 사랑하는 반려견</li>
                            </ul>
                        </table>

                    </section>
                    
                </section>
               
                <section class="container9">
                    <section class="container9-1">
                        <section class="item3">
                            <img src="${contextPath}/resources/images/ThemeBoard/Pet/pet5.jpg">
                        </section>
                        <section class="item3">
                            <img src="${contextPath}/resources/images/ThemeBoard/Pet/pet6.jpg">
                        </section>

                    </section>

                </section>

                <section class="container10">
                    <section class="container10-1">
                        <section class="item4">
                            <table>
                                 <ul>
                                    <li>위치 : 서울시 용산구 양녕로 445</li>
                                    <li>운영시간 : 24시간</li>
                                    <li>이용요금 : 무료</li>
                                    <li>문의 : 02-749-4500</li>
                                    <li>주차 : 공용주차장</li>
                                 </ul>
                            </table>
                        </section>

                        <section class="item4">
                            <table>
                                <ul>
                                    <li>위치 : 서울시 용산구 양녕로 445</li>
                                    <li>운영시간 : 24시간</li>
                                    <li>이용요금 : 무료</li>
                                    <li>문의 : 02-749-4500</li>
                                    <li>주차 : 공용주차장</li>
                                </ul>
                           </table>
                        </section>

                    </section>

                </section>

                <section class="container9">
                    <section class="container9-1">
                        <section class="item3">
                            <img src="${contextPath}/resources/images/ThemeBoard/Pet/pet7.jpg">
                        </section>
                        <section class="item3">
                            <img src="${contextPath}/resources/images/ThemeBoard/Pet/pet8.jpg">
                        </section>

                    </section>

                </section>

                <section class="container10">
                    <section class="container10-1">
                        <section class="item4">
                            <table>
                                 <ul>
                                    <li>위치 : 서울시 용산구 양녕로 445</li>
                                    <li>운영시간 : 24시간</li>
                                    <li>이용요금 : 무료</li>
                                    <li>문의 : 02-749-4500</li>
                                    <li>주차 : 공용주차장</li>
                                 </ul>
                            </table>
                        </section>

                        <section class="item4">
                            <table>
                                <ul>
                                    <li>위치 : 서울시 용산구 양녕로 445</li>
                                    <li>운영시간 : 24시간</li>
                                    <li>이용요금 : 무료</li>
                                    <li>문의 : 02-749-4500</li>
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