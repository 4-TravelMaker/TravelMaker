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
    <link rel="stylesheet" href="${contextPath}/resources/css/Theme/ThemeSunset1.css">
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
                    <h2>여름휴가 가기 좋은 충남 서산, 당진, 예산 여행 코스</h2>
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
                            <img src="${contextPath}/resources/images/ThemeBoard/Chungnam/taeshin.jpg">
                            <strong><h3>아그로랜드 태신목장</h3></strong>   
                        </div>
                        <div class="item">
                            <img src="${contextPath}/resources/images/ThemeBoard/Chungnam/olmicity.jpg">
                            <strong><h3>백석을미마을</h3></strong>
                        </div>
                        <div class="item">
                            <img src="${contextPath}/resources/images/ThemeBoard/Chungnam/amyArtgallery2.jpg">
                            <strong><h3>아미미술관</h3></strong>
                        </div>
                        <div class="item">
                            <img src="${contextPath}/resources/images/ThemeBoard/Chungnam/yesan.jpg">
                            <strong><h3>예당호 모노레일 & 출렁다리</h3></strong>
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
                    <p>֎ 감성과 짜릿함, 모두를 경험하고 싶은 분</p>
                    <p>֎ 감성과 짜릿함, 모두를 경험하고 싶은 분</p>
                    <p>֎ 여름 휴가로 로컬 여행을 고민하고 계신 분</p>
                          <h4>⭐ 추천 장소 ⭐</h4>
                    <h5>DAY 1 : 서산 해미읍성 - 아그로랜드 태신목장 - 당진 백석올미마을 - 당진 아미미술관</h5>
                    <h5>DAY 2 : 예산 예당호 모노레일 & 출렁다리 - 예산시장</h5>

                </section>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                
                <section class="container6">
                    아미미술관
                    
                </section>

                <section class="container7">
                    <section class="container7-1">
                        <img src="${contextPath}/resources/images/ThemeBoard/Chungnam/amyArtgallery.jpg" alt="">
                    </section>
                </section>

                <br>

                <section class="container8">
                    <section class="container8-1">
                        <table>
                            <ul>
                                <li>아미미술관은 폐교된 초등학교를 아름다운 미술관으로 재탄생시킨 공간입니다. </li>
                                <li>전시실 곳곳에 사진 찍기 좋은 포토존이 가득하고, 자연학습장으로도 활용되는 야외에서는 별도의 야외 전시도 관람할 수 있습니다. </li>
                                <li>조용하고 아름다운 이곳에서 감성을 한가득 채우며 사색하는 시간을 가져보세요.</li>
                            </ul>
                        </table>

                    </section>
                    
                </section>

                <br>
                <br>
                
               
                <section class="container9">
                    <section class="container9-1">
                        <section class="item3">
                            <img src="${contextPath}/resources/images/ThemeBoard/Chungnam/taeshin1.jpg">
                        </section>
                        <section class="item3">
                            <img src="${contextPath}/resources/images/ThemeBoard/Chungnam/olmicity1.jpg">
                        </section>

                    </section>

                </section>

                <section class="container10">
                    <section class="container10-1">
                        <section class="item4">
                            <table>
                                <ul style="width: 450px;">
                                    <li>※ 아그로랜드 태신목장</li>
                                    <li>위치 :  충청남도 예산군 고덕면 상몽2길 231</li>
                                    <li>운영시간 : 연중무휴</li>
                                    <li>이용요금 : 주중 11,000원 / 주말·공휴일 12,000원</li>
                                    <li>문의 : 041-356-3154</li>
                                   
                                 </ul>
                            </table>
                        </section>

                        <section class="item4">
                            <table>
                                <ul style="width:500px;">
                                    <li>※ 백석올미마을</li>
                                    <li>위치 :충청남도 당진시 순성면 매실로 246</li>
                                    <li>운영시간: 주중(월~금) : 09:00~18:00 / 매주 토, 일요일 휴무</li>
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
                            <img src="${contextPath}/resources/images/ThemeBoard/Chungnam/amyArtgallery1.jpg">
                        </section>
                        <section class="item3">
                            <img src="${contextPath}/resources/images/ThemeBoard/Chungnam/yesan3.jpg">
                        </section>

                    </section>

                </section>

                <section class="container10">
                    <section class="container10-1">
                        <section class="item4">
                            <table>
                                 <ul style="width: 470px;">
                                    <li>※ 아미미술관</li>
                                    <li>위치 : 충청남도 당진시 순성면 남부로 753-4</li>
                                    <li>운영시간 : 매일 09:00~18:30 </li>
                                    <li>이용요금 : 성인 6,000원 / 24개월~고등학생 · 만 70세 이상 4,000원</li>
                                    <li>문의 : 041-353-1555</li>
                                    <li>주차 : 자체 주차장 이용</li>
                                 </ul>
                            </table>
                        </section>

                        <section class="item4">
                            <table>
                                <ul style="width: 450px;">
                                    <li>※ 예산 예당호 모노레일 & 출렁다리</li>
                                    <li>위치 : 충청남도 예산군 응봉면 예당관광로 158</li>
                                    <li>운영시간 : [다리]09:00-22:00 [기차] 09:00~21:00 </li>
                                    <li>이용요금 : [다리]무료 [기차] 성인 9000원/만 65세 이상 5000원</li>
                                    <li>문의 : [다리]041-339-8287 [기차] 041-333-1041</li>
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