<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>프로젝트 소개</title>
    <script src="https://unpkg.com/embla-carousel/embla-carousel.umd.js"></script>
    <script src="https://unpkg.com/embla-carousel-autoplay/embla-carousel-autoplay.umd.js"></script>
    <link rel="shortcut icon" type="image/x-icon" href="${contextPath}/resources/images/Share/small_logo.png">
    <link rel="stylesheet" href="${contextPath}/resources/css/main-style.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/footer-policy-style.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/footer-project-introduce.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/ef988defcf.js" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/263168e067.js" crossorigin="anonymous"></script>
</head>

<body>
    <main>
       <%--  ${loginMember} --%>

       <jsp:include page="/WEB-INF/views/common/header.jsp"/>
       
        <section id="middle">
           
            <section class="main-title">
                프로젝트 소개
            </section>

            <section class="content-area">
                <p>
                    <img src="${contextPath}/resources/images/Share/small_logo.png" id="img-size"><br>
                    여행에 대한 진짜 정보를 알려 주는 친구들(이하 '여진구')은<br>
                    이름과 걸맞게 우리나라 여행에 즐거움을 더해 주기 위해<br>
                    Travel Maker 웹 사이트를 제작하게 되었습니다.<br><br>
                    앞으로도 여러분의 여행이 소중한 추억이 될 수 있도록<br>
                    더욱 노력하는 Travel Maker를 만들어 나가겠습니다.
                    <br><br>
                </p>

                <p class="box-border picture">
                    <img src="${contextPath}/resources/images/projectIntroduce/1.jpg">
                    <img src="${contextPath}/resources/images/projectIntroduce/2.jpg">
                    <img src="${contextPath}/resources/images/projectIntroduce/4.jpg"><br>
                    <img src="${contextPath}/resources/images/projectIntroduce/5.png">
                    <img src="${contextPath}/resources/images/projectIntroduce/6.jpg">
                    <img src="${contextPath}/resources/images/projectIntroduce/7.jpg"><br>
                    <img src="${contextPath}/resources/images/projectIntroduce/8.png">
                    <img src="${contextPath}/resources/images/projectIntroduce/9.jpg">
                    <img src="${contextPath}/resources/images/projectIntroduce/3.jpg">
                </p>

                <p class="box-border">
                    <div class="box-title sub-title"><i class="fa-solid fa-people-group" style="color: #99d8c7;"></i> &nbsp;프로젝트 팀원 소개</div>
                    <ul class="list-style">
                        <li>강신욱</li>
                        <li>김광수</li>
                        <li>박현주</li>
                        <li>안수현</li>
                        <li>이한규</li>
                        <li>홍승남</li>
                    </ul>
                </p>

                <p class="box-border">
                    <div class="box-title sub-title"><i class="fa-solid fa-calendar-days" style="color: #99d8c7;"></i> &nbsp;개발 기간</div>
                    <ul class="list-style">
                        <li>2023.06 ~ 2023.08
                    </ul>
                </p>

                <p class="box-border">
                    <div class="box-title sub-title"><i class="fa-solid fa-check" style="color: #99d8c7;"></i> &nbsp;주요 기능</div>
                    <ul class="list-style">
                        <li>지역별 여행 정보 소개</li>
                        <li>테마별 여행 정보 소개</li>
                        <li>나만의 하나뿐인 여행 계획 세우기</li>
                        <li>다른 여행자들과 진짜 여행 리뷰 공유</li>
                    </ul>
                </p>

            </section>

        </section>

        <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
        
    </main>

</body>
</html>