<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="pagination" value="${map.pagination}"/>
<c:set var="boardList" value="${map.board}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>마이 페이지 - 내 게시글 관리</title>
    <link rel="shortcut icon" type="image/x-icon" href="${contextPath}/resources/images/Share/small_logo.png">
    <link rel="stylesheet" href="${contextPath}/resources/css/myPage/myPage-OneOnOneInquirySelect.css">
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
                    <i class="fa-solid fa-circle-question" style="color: #000000;"></i>
                    &nbsp;내 게시글 관리
                </section>
            </section>

            <section>

                <table class="post-table">
                    <thead>
                        <tr class="table-bk">
                            <th>글 번호</th>
                            <th>제목</th>
                            <th>작성자 아이디</th>
                            <th>작성일</th>
                        </tr>
                    </thead>

                    <tbody>

                        <c:choose>

                            <c:when test="${empty boardList}">
                                <tr>
                                    <td colspan="4">게시글이 존재하지 않습니다.</td>
                                </tr>
                            </c:when>

                            <c:otherwise>
                                <c:forEach var="board" items="${boardList}">
                                    <tr>
                                        <td>${board.boardNo}</td>
                                        <td>
                                            <a href="board-detail?no=${board.boardNo}&cp=${pagination.currentPage}&type=${param.type}${sURL}">${board.boardTitle}</a>
                                        </td>
                                        <td>${board.memberId}</td>
                                        <td>${board.createDate}</td>
                                    </tr>
                                </c:forEach>

                            </c:otherwise>

                        </c:choose>

                    </tbody>

                </table>
            </section>

            <section class="pagination-area">

                <c:set var="url" value="?type=${param.type}&cp="/>
                <ul class="pagination">
                    <!-- 첫 페이지로 이동 -->
                    <li><a hef="${url}1">&lt;&lt;</a></li>

                    <!-- 이전 목록 마지막 번호로 이동 -->
                    <li><a href="${url}${pagination.prevPage}">&lt;</a></li>

                    <!-- 범위가 정해진 일반 for문을 사용 -->
                    <c:forEach var="i" begin="${pagination.startPage}" end="${pagination.endPage}" step="1">

                        <c:choose>
                            <c:when test="${i == pagination.currentPage}">
                                <li><a class="current">${i}</a></li>
                            </c:when>

                            <c:otherwise>
                                <li><a href="${url}${i}">${i}</a></li>
                            </c:otherwise>
                        </c:choose>

                    </c:forEach>

                    <!-- 다음 목록 시작 번호로 이동 -->
                    <li><a href="${url}${pagination.nextPage}">&gt;</a></li>
                    
                    <!-- 끝 페이지로 이동 -->
                    <li><a href="${url}${pagination.maxPage}">&gt;&gt;</a></li>
                </ul>
            
            </section>

        </section>
        
    </section>

    </main>

    <!-- footer -->
    <jsp:include page="/WEB-INF/views/common/footer.jsp"/>

</body>
</html>