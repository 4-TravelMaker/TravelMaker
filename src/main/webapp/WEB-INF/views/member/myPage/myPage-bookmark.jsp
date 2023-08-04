<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="pagination" value="${map.pagination}"/>
<c:set var="boardList" value="${map.boardList}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>마이 페이지 - 북마크 리스트</title>
    <link rel="shortcut icon" type="image/x-icon" href="${contextPath}/resources/images/Share/small_logo.png">
    <link rel="stylesheet" href="${contextPath}/resources/css/myPage/myPage-bookmark.css">
	<link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/ef988defcf.js" crossorigin="anonymous"></script>
</head>
<body>
    <main>

    <!-- header -->
    <jsp:include page="/WEB-INF/views/common/header.jsp"/>

    <!-- myPage-sideBar -->
    <jsp:include page="/WEB-INF/views/common/myPage-sideBar.jsp"/>
    
        <section class="right-section">

            <!-- 관리자 페이지 상단 우측 제목 -->
            <section>
                <section class="title">
                    <i class="fa-solid fa-book-bookmark" style="color: #000000;"></i>
                    &nbsp;북마크 리스트
                </section>
            </section>

            <section class="bookmark-select-area">
                <div class="bookmark-area">
                    <div class="thumbnail">
                        <img src="${contextPath}/resources/images/Region/jeju/cafeTheSeason.jpg">
                    </div>
                    <div class="bookmarkTitle">카페 그계절</div>
                </div>

                <div class="bookmark-area">
                    <div class="thumbnail">
                        <img src="${contextPath}/resources/images/Region/jeju/cafeTheSeason.jpg">
                    </div>
                    <div class="bookmarkTitle">카페 그계절</div>
                </div>

                <div class="bookmark-area">
                    <div class="thumbnail">
                        <img src="${contextPath}/resources/images/Region/jeju/cafeTheSeason.jpg">
                    </div>
                    <div class="bookmarkTitle">카페 그계절</div>
                </div>

                <div class="bookmark-area">
                    <div class="thumbnail">
                        <img src="${contextPath}/resources/images/Region/jeju/cafeTheSeason.jpg">
                    </div>
                    <div class="bookmarkTitle">카페 그계절</div>
                </div>

                <div class="bookmark-area">
                    <div class="thumbnail">
                        <img src="${contextPath}/resources/images/Region/jeju/cafeTheSeason.jpg">
                    </div>
                    <div class="bookmarkTitle">카페 그계절</div>
                </div>

                <div class="bookmark-area">
                    <div class="thumbnail">
                        <img src="${contextPath}/resources/images/Region/jeju/cafeTheSeason.jpg">
                    </div>
                    <div class="bookmarkTitle">카페 그계절</div>
                </div>                
                
                <div class="bookmark-area">
                    <div class="thumbnail">
                        <img src="${contextPath}/resources/images/Region/jeju/cafeTheSeason.jpg">
                    </div>
                    <div class="bookmarkTitle">카페 그계절</div>
                </div>

                <div class="bookmark-area">
                    <div class="thumbnail">
                        <img src="${contextPath}/resources/images/Region/jeju/cafeTheSeason.jpg">
                    </div>
                    <div class="bookmarkTitle">카페 그계절</div>
                </div>

                <div class="bookmark-area">
                    <div class="thumbnail">
                        <img src="${contextPath}/resources/images/Region/jeju/cafeTheSeason.jpg">
                    </div>
                    <div class="bookmarkTitle">카페 그계절</div>
                </div>
            </section>

        </section>
        
    </section>

    </main>

    <!-- footer -->
    <jsp:include page="/WEB-INF/views/common/footer.jsp"/>

</body>
</html>