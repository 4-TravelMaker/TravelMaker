<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


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

        <section id="middle5">
            <section class="middle1-1">
                <section>여행 정보 | </section>
                        <section>${param.name}</section>
            </section>
            <section class="middle1-2">
                <c:forEach var="i" items="${cList}">
                    <section>${i.categoryName}</section>
                </c:forEach>
            </section>

            <hr>
      
            <section id="middle-area">

                <section class="middle1-3">
                    <section class="photobox">
                        <section class="photo">
                            <a href="regionDetail?ctgr=${param.ctgr}" style="color: black">
                                    <c:forEach var="i" items="${cList}">
                                        <img src="${contextPath}${i.imgRename}" width="230px" height="190px" class="photo2">
                                        <section id="title">${i.boardTitle}</section>
                                    </c:forEach>
                            </a>
                        </section>
                    
                    </section>
                </section>
    

            </section>
           
        </section>

        <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
    </main>
</body>
</html>