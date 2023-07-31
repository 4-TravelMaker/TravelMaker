<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- 문자열 관련 함수(메소드) 제공 JSTL (EL 형식으로 작성) --%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${param.searchParam}" 검색 결과</title>
    <link rel="shortcut icon" type="image/x-icon" href="${contextPath}/resources/images/Share/small_logo.png">
    <link rel="stylesheet" href="${contextPath}/resources/css/Search/search.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/ef988defcf.js" crossorigin="anonymous"></script>
</head>
<body>
    <main>
        <jsp:include page="/WEB-INF/views/common/header.jsp"/>

        <section id="middle">

            
           <section class="searchResultArea">

              
                <section class="serchResult">"${param.searchParam}" 검색 결과</section>
           
           </section>

           <section style="height: 15px;"></section>

           <section class="selectArea">

                <button id="allbutton">전체</button>
                <span>|</span>
                <button id="travelInfoButton">여행정보</button>  
                <span>|</span>
                <button id="travelReviewButton">여행 리뷰 게시판</button>

           </section>

           <section style="height: 55px;"></section>

           <section class="resultArea">

                
            <c:choose>

                <c:when test="${empty boardList}">


                    <h1 class="notFindText">검색 결과가 없습니다</h1>



                </c:when>

                <c:otherwise>

                    <c:forEach var="board" items="${boardList}">
                    
                        <li style="height: 150px; list-style: none;" >
                            <section style="float: left;">
                                <a href="#">
                                <img src="${contextPath}/resources/images/logo.png">
                                </a>
                            </section>
                            <section style="font-weight: bold; font-size:23px; margin-left: 130px;">
                                <a href="boardNotice/detail?no=${board.boardNo}&cp=${pagination.currentPage}&type=${param.type}">${board.boardTitle}</a>
                            </section>
                            <p class="categoryName">${board.categoryName}</p>
                            <p class="readCount">조회수 : ${board.readCount}</p>                    
                        </li>

                    </c:forEach>

                </c:otherwise>    
                
            </c:choose>
               
            
           </section>
           
        </section>

        <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
    </main>
</body>
</html>