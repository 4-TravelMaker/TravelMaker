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
    <link rel="stylesheet" href="${contextPath}/resources/css/ThemePlaceDRmarket.css">
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
                    <b>교동도 대룡시장</b>
                </section>
                <section class="container2">
                    <br>
                    <b>인천 강화군</b> <br><br>
                    <div>
                        <span style="box-shadow: rgb(255, 223, 223)">황해도 연백시장의 모습을 재현한 골목시장</span>
                    </div>
                </section>
                <section class="container3">
                    <hr>
                </section>
                <section class="container4">
                    <p>좋아요 0 조회수 0</p>
                </section>
                <section class="container5">
                    <section class="container5-1"></section>
                    <div class="container5-2">
                        <img src="${contextPath}/resources/images/ThemeBoard/theme2/DaeryrongMarket.jpg">
                    </div>
                    <section class="container5-1"></section>

                </section>

                <section class="container6">
                    <b>상세정보</b>
                </section>
                <section class="container3">
                    <hr>
                </section>

                <section class="container7">
                    <div>
                        <span>대룡시장은 6.25때 황해도 연백군에서 교동도로 
                            잠시 피난 온 주민들이 한강하구가 분단선이 되어 
                            고향에 다시 돌아갈 수 없게 되자 생계를 유지하기 위해 
                            고향에 있는 연백시장의 모습을 재현한 골목시장이다.</span>
                        <span>50여년간 교동도 경제발전의 중심지였으며 
                            지금은 시장을 만든 실향민 어르신 대부분이 돌아가시고 
                            인구가 급격히 줄어들면서 시장의 규모도 상당히 줄었다.</span>
                        <span>그러나 2014년 7월 교동대교 개통과 함께 1960년대 
                            영화세트장 같은 모습의 대룡시장을 카메라에 담기 위한 
                            관광객들의 필수코스가 되었다.</span>

                    </div>
                </section>
                <section class="container8">지도</section>
                <section class="container9">
                    <section class="container9-1">
                        <table>
                            <ul>
                                <li>문의 및 안내</li>
                                <li>주소</li>
                                <li>주차</li>
                                <li>취급메뉴</li>
                            </ul>
                        </table>
                    </section>
                    <section class="container9-1">
                        <table>
                            <ul>
                                <li>홈페이지</li>
                                <li>영업시간</li>
                                
                            </ul>
                        </table>

                    </section>
                </section>

            </section>
            

        </section>

        <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
    </main>
</body>
</html>