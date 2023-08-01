<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="boardName" value="${map.boardName}" />
<c:set var="pagination" value="${map.pagination}" />
<c:set var="boardList" value="${map.boardList}" />
<c:set var="imageList" value="${map.imageList}" />
<c:set var="boardLikeList" value="${map.boardLikeList}" />
<c:set var="replyCountList" value="${map.replyCountList}" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TravelMaker</title>
    <link rel="shortcut icon" type="image/x-icon" href="${contextPath}/resources/images/Share/small_logo.png">
    <link rel="stylesheet" href="${contextPath}/resources/css/Review/travelReviewBoardList.css">
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
        
            <span class="title">여행 리뷰 게시판 <c:if test="${!empty param.key}"><span class="query-result"> - "${param.query}" 검색 결과</span></c:if></span>

            <div class="container">

                <c:if test="${!empty loginMember}">
                    <div id="write-btn">
                        <a href="write?mode=insert&cp=${param.cp}&type=${param.type}">글쓰기</a>
                    </div>
                </c:if>

                <div class="content">
                    
                    <c:choose>
                        <c:when test="${empty boardList}">
                            <div class="nothing">게시글이 존재하지 않습니다.</div>
                        </c:when>
                        
                        <c:otherwise>
                            <c:forEach var="board" items="${boardList}" varStatus="status">
                                <div class="board-area">
                                    <div class="member-box">
                                        <c:if test="${!empty board.profileImage}">
                                            <img src="${contextPath}${board.profileImage}" class="profileImage">
                                        </c:if>
                                        <c:if test="${empty board.profileImage}">
                                            <img src="${contextPath}/resources/images/myPageProfile/profile.png" class="profileImage">
                                        </c:if>

                                        <span class="memberNickname">${board.memberId}</span>
                                    </div>
            
                                    <a href="detail?no=${board.boardNo}&cp=${pagination.currentPage}&type=${param.type}">
                                        <c:if test="${!empty board.thumbnail}">
                                            <img src="${contextPath}${board.thumbnail}" class="thumbnail-size">
                                        </c:if>
                                        <c:if test="${empty board.thumbnail}">
                                            <img src="${contextPath}/resources/images/Review/logo.png" class="thumbnail-size">
                                        </c:if>
                                    </a>
            
                                    <div class="icon-box">
                                        <div>
                                            <i class="fa-regular fa-heart"></i>
                                            <div class="count">${boardLikeList[status.index]}</div>
                                        </div>
            
                                        <div>
                                            <i class="fa-regular fa-comment"></i>
                                            <div class="count">${replyCountList[status.index]}</div>
                                        </div>
                                    </div>
            
                                    <h1 class="boardTitle">
                                        <a href="detail?no=${board.boardNo}&cp=${pagination.currentPage}&type=${param.type}" class="boardTitle">${board.boardTitle}</a>
                                    </h1>
                                </div>
                            </c:forEach>
                        </c:otherwise>

                    </c:choose>

                </div>

            </div>

        </section>

        <section>
            <c:set var="url" value="list?type=${param.type}&cp="/>
            <ul class="pagination">
                <li><a href="${url}1">&lt;&lt;</a></li>
                <li><a href="${url}${pagination.prevPage}">&lt;</a></li>

                <c:forEach var="i" begin="${pagination.startPage}" end="${pagination.endPage}" step="1">
                    
                    <c:choose>
                        <c:when test="${i == pagination.currentPage}">
                            <li><a class="current">${i}</a></li>
                        </c:when>

                        <c:otherwise>
                            <li><a href=${url}${i}>${i}</a></li>
                        </c:otherwise>
                    </c:choose>

                </c:forEach>

                <li><a href="${url}${pagination.nextPage}">&gt;</a></li>
                <li><a href="${url}${pagination.maxPage}">&gt;&gt;</a></li>
            </ul>
        </section>

        <form action="list" method="GET" id="boardSearch" onsubmit="return searchValidate()">
            <input type="hidden" name="type" value="${param.type}">

            <select name="key" id="search-key">
                <option value="t">제목</option>
                <option value="c">내용</option>
                <option value="tc">제목+내용</option>
                <option value="w">작성자</option>
            </select>

            <input type="text" name="query" id="search-query" placeholder="검색어를 입력해주세요.">

            <button>검색</button>
        </form>

        <jsp:include page="/WEB-INF/views/common/footer.jsp"/>

    </main>
    
    <script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
    <script src="${contextPath}/resources/js/review/boardDetail.js"></script>

</body>
</html>