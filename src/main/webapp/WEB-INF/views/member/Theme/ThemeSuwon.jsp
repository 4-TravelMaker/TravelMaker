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
                    <h2>수원 여행, 나들이로 가기 좋은 여행 코스</h2>
                </section>
                <section class="container2">

                    <h4>조회수 ${board.readCount}</h4>
                   
                </section>
                <br>
                <section class="container2-1">
                    <hr>
                </section>
                <section class="container3">
                    
                    <section class="flex_container1">
                        
                        <div class="item">
                            <img src="${contextPath}/resources/images/ThemeBoard/Suwon/hanok.jpg">
                            <strong><h3>한옥기술전시관</h3></strong>   
                        </div>
                        <div class="item">
                            <img src="${contextPath}/resources/images/ThemeBoard/Suwon/hwasung.jpg">
                            <strong><h3>수원화성</h3></strong>
                        </div>
                        <div class="item">
                            <img src="${contextPath}/resources/images/ThemeBoard/Suwon/haegungdong.jpg">
                            <strong><h3>행궁동 공방거리</h3></strong>
                        </div>
                        <div class="item">
                            <img src="${contextPath}/resources/images/ThemeBoard/Suwon/yongdongmarket.jpg">
                            <strong><h3>수원 영동시장</h3></strong>
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
                    <p>֎ 가까운 곳에서 여행을 즐기고 싶은 분</p>
                    <p>֎ 아이와 함께 가볼 만한 곳을 찾는 분</p>
                    <p>֎ 나들이로 가기 좋은 여행지가 궁금하신 분</p>
                         <h4>⭐ 추천 장소 ⭐</h4>
                    <h4>한옥기술전시관, 수원화성, 행궁동 공방거리, 수원 영동시장</h4>

                </section>
                <br>
                <br>
                <br>
                <br>
                <br>
                <section class="container6">

                    수원화성
                </section>

                <section class="container7">
                    <section class="container7-1">
                        <img src="${contextPath}/resources/images/ThemeBoard/Suwon/hwasung1.jpg" alt="">
                    </section>
                </section>

                <br>

                <section class="container8">
                    <section class="container8-1">
                        <table>
                            <ul>
                                <li>수원화성은 유네스코 세계문화유산으로도 선정된 곳으로 역사적 가치가 높은 곳입니다.</li>
                                <li>매년 가을이면 세계유산축전, 수원화성문화제, 수원화성 미디어아트 등 문화 체험을 즐기기 위해 많은 사람이 방문하는 곳인데요.</li>
                                <li>수원화성을 즐기려면 성곽길을 따라 산책을 하거나 수원화성의 주요 관광 스폿을 순환하는 화성어차를 타고 둘러볼 수 있습니다. 현대와 과거가 어우러진 이곳에서 가족과 함께 나들이를 즐겨보세요.</li>
                            </ul>
                        </table>

                    </section>
                    
                </section>

                <br>
                <br>
                <br>
               
                <section class="container9">
                    <section class="container9-1">
                        <section class="item3">
                            <img src="${contextPath}/resources/images/ThemeBoard/Suwon/hanok1.jpg">
                        </section>
                        <section class="item3">
                            <img src="${contextPath}/resources/images/ThemeBoard/Suwon/hwasung3.jpg">
                        </section>

                    </section>

                </section>

                <section class="container10">
                    <section class="container10-1">
                        <section class="item4">
                            <table>
                                <ul style="width: 450px;">
                                    <li>※ 한옥기술전시관</li>
                                    <li>위치 : 경기도 수원시 팔달구 정조로885번길 1</li>
                                    <li>운영시간 : 화~일요일 10:00~17:00, 매주 월요일 휴무</li>
                                    <li>이용요금 : 무료</li>
                                    <li>문의 : 031-247-9370</li>
                                   
                                 </ul>
                            </table>
                        </section>

                        <section class="item4">
                            <table>
                                <ul style="width:450px;">
                                    <li>※ 수원화성</li>
                                    <li>위치 : 경기도 수원시 장안구 영화동 320-2</li>
                                    <li>운영시간 : 연중무휴</li>
                                    <li>문의 : 031-228-4672</li>
                                    <li>주차 : 공영 주차장 이용</li>
                                </ul>
                           </table>
                        </section>

                    </section>

                </section>

                <br>

                <section class="container9">
                    <section class="container9-1">
                        <section class="item3">
                            <img src="${contextPath}/resources/images/ThemeBoard/Suwon/haegungdong1.jpg">
                        </section>
                        <section class="item3">
                            <img src="${contextPath}/resources/images/ThemeBoard/Suwon/yongdongmarket1.jpg">
                        </section>

                    </section>

                </section>

                <section class="container10">
                    <section class="container10-1">
                        <section class="item4">
                            <table>
                                 <ul>
                                    <li>※ 행궁동 공방거리</li>
                                    <li>위치 : 경기도 수원시 팔달구 남창동</li>
                                    <li>운영시간 : 연중무휴(가게별 이용 시간 상이)</li>
                                    <li>이용요금 : 무료</li>
                                    <li>문의 : 수원종합관광안내소 031-228-4672</li>
                                    <li>주차 : 공영 주차장 이용</li>
                                 </ul>
                            </table>
                        </section>

                        <section class="item4">
                            <table>
                                <ul style="width: 450px;">
                                    <li>※ 수원 영동시장</li>
                                    <li>위치 :경기도 수원시 팔달구 수원천로255번길 6</li>
                                    <li>운영시간 : 월~일요일 09:00~20:00(일부 점포 제외) </li>
                                    <li>이용요금 : 가게별 요금 상이</li>
                                    <li>문의 : 수원 영동시장 고객센터 031-251-0171</li>
                                    <li>주차 : 공영 주차장 이용</li>
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