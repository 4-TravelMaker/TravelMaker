<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"  %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TravelMaker</title>
    <link rel="shortcut icon" type="image/x-icon" href="${contextPath}/resources/images/Share/small_logo.png">
    <link rel="stylesheet" href="${contextPath}/resources/css/Review/TravelReviewBoardDetail.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/Review/reply-style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/ef988defcf.js" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/aa566476b0.js" crossorigin="anonymous"></script>
</head>
<body>
    <main>
        <jsp:include page="/WEB-INF/views/common/header.jsp"/>

        <section id="middle">
        
            <div class="container">
                <h2>${detail.boardName}</h2>
            </div>
            <div>
                <div>
                    <div class="container">
                        <h1>${detail.boardTitle}</h1>

                        <div class="title">
                            <div id="name">
                                <c:if test="${!empty board.profileImage}">
                                    <img src="${contextPath}${detail.profileImage}" class="profile">
                                </c:if>
                                <c:if test="${empty board.profileImage}">
                                    <img src="${contextPath}/resources/images/myPageProfile/profile.png" class="profile">
                                </c:if>
                                <span>${detail.memberNickname}</span>
                            </div>

                            <div class="date">
                                <span>작성일 ${detail.createDate}</span>
                            </div>
                        </div>
                    </div>
                </div>

                <div style="border-top: 2px solid lightgray;">
                    <div class="container">
                        <div id="content-image">
                            <div id="image">
                                <img src="${contextPath}/resources/images/Review/Dagu.jpg" id="image34">
                            </div>
    
                            <div id="notice">
                                ${detail.boardContent}
                            </div>
                        </div>    
                    </div>
                </div>
            </div>

            <div style="border-bottom: 2px solid lightgray;">
                <div class="container">
                    <div class="like">
                        <c:set var="likeList" value="${detail.likeList}"/>
                        <div id="like-btn-box">
                            <c:set var="likeState" value="empty"/>
                            <c:forEach var="like" items="${likeList}">
                                <c:if test="${loginMember.memberNo == like}">
                                    <c:set var="likeState" value="full"/>
                                </c:if>
                            </c:forEach>
                            <c:if test="${likeState == 'empty'}">
                                <img src="${contextPath}/resources/images/Review/heart-empty.png" id="like-btn" class="heart empty">
                            </c:if>
                            <c:if test="${likeState == 'full'}">
                                <img src="${contextPath}/resources/images/Review/heart-full.png" id="like-btn" class="heart full">
                            </c:if>
                            </div>
                        <div>
                            <span>좋아요</span>
                        </div>
                        <div id="likeCountBox">${detail.likeCount}</div>
                    </div>
                </div>
            </div>

            <jsp:include page="/WEB-INF/views/member/Review/reply.jsp"/>

            <!-- jQuery 추가 -->
            <script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>

        </section>

        <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
    </main>

    <script>
        const contextPath = "${contextPath}";

        const boardNo = "${detail.boardNo}";

        const loginMemberNo = "${loginMember.memberNo}";

        const likeList = "${likeList}";
    </script>

    <script src="${contextPath}/resources/js/Reply/reply.js"></script>
</body>
</html>