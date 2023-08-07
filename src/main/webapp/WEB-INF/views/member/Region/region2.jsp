<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="bList" value="${map.bList}" />
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

        <c:if test="${param.ctgr==4}">
            <div id="ww_d00efad5da181" v='1.3' loc='id' a='{"t":"ticker","lang":"ko","sl_lpl":1,"ids":["wl4479"],"font":"Arial","sl_ics":"one_a","sl_sot":"celsius","cl_bkg":"#FFFFFF00","cl_font":"#000000","cl_cloud":"#d4d4d4","cl_persp":"#2196F3","cl_sun":"#FFC107","cl_moon":"#FFC107","cl_thund":"#FF5722"}'>Weather Data Source: <a href="https://wetterlang.de/seoul_wetter_30_tage/" id="ww_d00efad5da181_u" target="_blank">Wetter 30 tage Seoul</a></div><script async src="https://app2.weatherwidget.org/js/?id=ww_d00efad5da181"></script>
        </c:if>

        <c:if test="${param.ctgr==7}">
            <div id="ww_cfd75262fd752" v='1.3' loc='id' a='{"t":"ticker","lang":"ko","sl_lpl":1,"ids":["wl7471"],"font":"Arial","sl_ics":"one_a","sl_sot":"celsius","cl_bkg":"#FFFFFF00","cl_font":"#000000","cl_cloud":"#d4d4d4","cl_persp":"#2196F3","cl_sun":"#FFC107","cl_moon":"#FFC107","cl_thund":"#FF5722"}'>Weather for the Following Location: <a href="https://2ua.org/de/kor/gyeonggi-do/karte/" id="ww_cfd75262fd752_u" target="_blank">Gyeonggi-do auf der Karte, Südkorea</a></div><script async src="https://app2.weatherwidget.org/js/?id=ww_cfd75262fd752"></script>
        </c:if>

        <c:if test="${param.ctgr==8}">
            <div id="ww_d23a97d301b70" v='1.3' loc='id' a='{"t":"ticker","lang":"ko","sl_lpl":1,"ids":["wl7478"],"font":"Arial","sl_ics":"one_a","sl_sot":"celsius","cl_bkg":"#FFFFFF00","cl_font":"#000000","cl_cloud":"#d4d4d4","cl_persp":"#2196F3","cl_sun":"#FFC107","cl_moon":"#FFC107","cl_thund":"#FF5722"}'>Weather for the Following Location: <a href="https://2ua.org/de/kor/gangwon-do/karte/" id="ww_d23a97d301b70_u" target="_blank">Gangwon-do auf der Karte, Südkorea</a></div><script async src="https://app2.weatherwidget.org/js/?id=ww_d23a97d301b70"></script>
        </c:if>

        <c:if test="${param.ctgr==9}">
            <div id="ww_2648cda478f88" v='1.3' loc='id' a='{"t":"ticker","lang":"ko","sl_lpl":1,"ids":["wl7436"],"font":"Arial","sl_ics":"one_a","sl_sot":"celsius","cl_bkg":"#FFFFFF00","cl_font":"#000000","cl_cloud":"#d4d4d4","cl_persp":"#2196F3","cl_sun":"#FFC107","cl_moon":"#FFC107","cl_thund":"#FF5722"}'>Weather for the Following Location: <a href="https://2ua.org/de/kor/chungju/karte/" id="ww_2648cda478f88_u" target="_blank">Chungju auf der Karte, Südkorea</a></div><script async src="https://app2.weatherwidget.org/js/?id=ww_2648cda478f88"></script>
        </c:if>

        <c:if test="${param.ctgr==11 || param.ctgr==5}">
            <div id="ww_55c59260a486e" v='1.3' loc='id' a='{"t":"ticker","lang":"ko","sl_lpl":1,"ids":["wl7424"],"font":"Arial","sl_ics":"one_a","sl_sot":"celsius","cl_bkg":"#FFFFFF00","cl_font":"#000000","cl_cloud":"#d4d4d4","cl_persp":"#2196F3","cl_sun":"#FFC107","cl_moon":"#FFC107","cl_thund":"#FF5722"}'>Weather for the Following Location: <a href="https://2ua.org/de/kor/gyeongsan/karte/" id="ww_55c59260a486e_u" target="_blank">Gyeongsan auf der Karte, Südkorea</a></div><script async src="https://app2.weatherwidget.org/js/?id=ww_55c59260a486e"></script>
        </c:if>

        <c:if test="${param.ctgr==10}">
            <div id="ww_a938097d62dfe" v='1.3' loc='id' a='{"t":"ticker","lang":"ko","sl_lpl":1,"ids":["wl7404"],"font":"Arial","sl_ics":"one_a","sl_sot":"celsius","cl_bkg":"#FFFFFF00","cl_font":"#000000","cl_cloud":"#d4d4d4","cl_persp":"#2196F3","cl_sun":"#FFC107","cl_moon":"#FFC107","cl_thund":"#FF5722"}'>Weather for the Following Location: <a href="https://2ua.org/de/kor/jeonju/karte/" id="ww_a938097d62dfe_u" target="_blank">Jeonju auf der Karte, Südkorea</a></div><script async src="https://app2.weatherwidget.org/js/?id=ww_a938097d62dfe"></script>
        </c:if>

        <c:if test="${param.ctgr==12}">
            <div id="ww_68a263f979f91" v='1.3' loc='id' a='{"t":"ticker","lang":"ko","sl_lpl":1,"ids":["wl7410"],"font":"Arial","sl_ics":"one_a","sl_sot":"celsius","cl_bkg":"#FFFFFF00","cl_font":"#000000","cl_cloud":"#d4d4d4","cl_persp":"#2196F3","cl_sun":"#FFC107","cl_moon":"#FFC107","cl_thund":"#FF5722"}'>Weather for the Following Location: <a href="https://2ua.org/de/kor/jeju-si/karte/" id="ww_68a263f979f91_u" target="_blank">Jeju-si auf der Karte, Südkorea</a></div><script async src="https://app2.weatherwidget.org/js/?id=ww_68a263f979f91"></script>
        </c:if>

        <section id="middle5">
            <section class="middle1-1">
               <a href="${contextPath}/Region/main" style="color: black;"><section> 여행정보 | </section></a>
                        <section>${param.name}</section>
            </section>

            <hr style="color: beige;">
      
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