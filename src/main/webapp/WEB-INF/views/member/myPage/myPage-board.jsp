<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TravelMaker</title>
    <link rel="shortcut icon" type="image/x-icon" href="${contextPath}/resources/images/Share/small_logo.png">

    <link rel="stylesheet" href="${contextPath}/resources/css/myPage/myPage-changeInfo.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/myPage/myPage-board.css">


	<link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/ef988defcf.js" crossorigin="anonymous"></script>
</head>
<body>
    <main>
	<title>마이 페이지</title>
    
    <!-- header -->
    <jsp:include page="/WEB-INF/views/common/header.jsp"/>
    <!-- myPage-sideBar -->
    <jsp:include page="/WEB-INF/views/common/myPage-sideBar.jsp"/>

            <section class="right-section">
                <section class="right-section-head">내 게시글 관리<hr></section>

                <section class="right-section-area1">

                    <section class="right-section-subhead">
                        <section id="subtitle">
                            <a href="#" style="font-weight: bold;">내 게시글</a>
                            <span>  </span>
                        </section>

                        <section id="btn-area">
                            <button class="remove-btn" id="remove-sel">선택 삭제</button>
                        </section>
                    </section>

                    <section id="test">
                        <section>구분</section>
                        <section>게시글 제목</section>
                    </section>

                    <section id="board-area">
                        <section id="board-area">
                            <c:forEach var="i" items="${list}">
                                <input type="checkbox" name="check" class="check" id="check" value="${i.boardNo}">
                                <div class="board-title">${i.boardTitle}</div>
                                <div class="contents">
                                    <textarea spellcheck="false">${i.boardContent}</textarea>
                                    <button type="button" class="board-btn modify">수정</button>
                                    <button type="button" class="board-btn delete">삭제</button>
                                </div>
                                <hr class="hr">
                            </c:forEach>
                        </section>
                    </section>

                </section>
            </section>
        
    </main>
        
    <!-- footer -->
    <jsp:include page="/WEB-INF/views/common/footer.jsp"/>

    <script src="${contextPath}/resources/js/myPage/myPage-board.js"></script>
</body>
</html>