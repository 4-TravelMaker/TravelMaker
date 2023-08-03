<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="ctgrName" value="${map.ctgrName}" />
<c:set var="cList" value="${map.cList}" />

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TravelMaker</title>
    <link rel="shortcut icon" type="image/x-icon" href="image/small_logo.png">

    <link rel="stylesheet" href="${contextPath}/resources/css/Region/region2.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/main-style.css">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/ef988defcf.js" crossorigin="anonymous"></script>
</head>
<body>
    <main>
        <jsp:include page="/WEB-INF/views/common/header.jsp"/>

        <div id="ww_2c2c28518605e" v='1.3' loc='id' a='{"t":"ticker","lang":"ko","sl_lpl":1,"ids":[],"font":"Arial","sl_ics":"one_a","sl_sot":"celsius","cl_bkg":"#FFFFFF00","cl_font":"#000000","cl_cloud":"#d4d4d4","cl_persp":"#2196F3","cl_sun":"#FFC107","cl_moon":"#FFC107","cl_thund":"#FF5722"}'>Weather Data Source: <a href="https://wetterlabs.de/wetter_suwon/woche/" id="ww_2c2c28518605e_u" target="_blank">wettervorhersage 7 tage</a></div><script async src="https://app2.weatherwidget.org/js/?id=ww_2c2c28518605e"></script>

        <section id="middle5">
            <section class="middle1-1">
                <section>여행 정보 | </section>
                        <section>${param.name}</section>
            </section>
            <section class="middle1-2">
                <c:forEach var="i" items="${ctgrName}">
                        <section>${i}</section>
                </c:forEach>
            </section>

            <hr>

            
      
            <section id="middle-area">

                <section class="middle1-3">
                    <section class="photobox">
                        <section class="photo">
                            <c:forEach var="i" items="${cList}">
                                <a href="regionDetail?ctgr=${param.ctgr}&board=${i.boardNo}" style="color: black">
                                    <img src="${contextPath}${i.imgRename}" width="230px" height="190px" class="photo2">
                                    <section id="title">${i.boardTitle}</section>
                                </a>
                            </c:forEach>
                        </section>
                    </section>
                </section>
    

            </section>
           
        </section>

        <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
    </main>
</body>
</html>