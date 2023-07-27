<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="boardName" value="${map.boardName}" />
<c:set var="pagination" value="${map.pagination}" />
<c:set var="boardList" value="${map.boardList}" />


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TravelMaker</title>
    <link rel="shortcut icon" type="image/x-icon" href="image/small_logo.png">
    <link rel="stylesheet" href="${contextPath}/resources/css/Review/TravelReviewNotice.css">
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

            <div id="title-notice">
                <h1>여행 리뷰 게시판</h1>
            </div>
           

            <div>
                <h2 style="padding-left: 105px;">공지사항</h2>
            </div>
            
            <div style="width: 1100px; padding-left: 100px;">
                <table class="list-table">
                    <thead>
                        <tr id="tr">
                            <th class="table-1">게시글 번호</th>
                            <th class="table-1 title">제목</th>
                            <th class="table-1">작성일</th>
                            <th class="table-1">조회수</th>
                        </tr>
                    </thead>
                    
                    <tbody>

                        <c:choose>
                            <c:when test="${empty boardList}">
                                <!-- 게시글 목록이 비어있다면 -->
                                <tr>
                                    <th colspan="5">게시글이 존재하지 않습니다.</th>
                                </tr>
                            </c:when>

                            <c:otherwise>
                                <!-- 게시글 목록 조회 결과가 비어있지 않다면 -->

                                <!-- 향상된 for문 사용 -->
                                <c:forEach var="board" items="${boardList}">
                                    <tr>
                                        <td>${board.boardNo}</td>
                                        <td>
                                            <a href="#">${board.boardTitle}</a>
                                        </td>
                                        <td>${board.createDate}</td>
                                        <td>${board.readCount}</td>

                                    </tr>
                                </c:forEach>
                            </c:otherwise>

                        </c:choose>


                    </tbody>

                    
                </table>
            </div>
${pagination}
            <div id="last">
                
                <div class="pagination-area">
                    
                    <!-- 페이지네이션 a태그에 사용될 공통 주소를 저장한 변수 선언 -->
                    <c:set var="url" value="list?type=${param.type}$cp="/>
                    
                    <ul class="pagination">
                        <!-- 첫 페이지로 이동 -->
                        <li><a href="${url}1">&lt;&lt;</a></li>
                        
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

                </div>

            </div>

            <section></section>
        
            
            

        </section>

        <footer>
            <section>Copyright © TravelMaker Corp. All rights reserved.</section>
            <section class="footer"> 　　이용약관　　 </section>
            <section class="footer"> 　　운영정책　　 </section>
            <section class="footer"> 　　1:1문의　　 </section>
        </footer>
    </main>
    
</body>
</html>