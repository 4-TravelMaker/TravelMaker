<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- 문자열 관련 함수(메소드) 제공 JSTL (EL 형식으로 작성) --%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="detail" value="${map.detail}" />
<c:set var="rList" value="${map.rList}" />


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>내 게시글 관리 - 상세페이지</title>
    <link rel="shortcut icon" type="image/x-icon" href="${contextPath}/resources/images/Share/small_logo.png">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="${contextPath}/resources/css/main-style.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/myPage/myPage-boardDetail.css"> 

    <script src="https://kit.fontawesome.com/ef988defcf.js" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
</head>
<body>
    <main>

		<jsp:include page="/WEB-INF/views/common/header.jsp"/>

        <jsp:include page="/WEB-INF/views/common/myPage-sideBar.jsp"/>

        <section class="right-section">
            
            <section>
                <div class="title">
                    <i class="fa-solid fa-circle-question" style="color: #000000;"></i>
                    &nbsp;내 게시글 관리
                </div>
            </section>


            <!-- 게시글 영역 -->
            <section class="customer-inquiry">
                <section class="updateContent-title">
                    ${detail.boardTitle}
                </section>
                <section>게시글 번호 : ${detail.boardNo} &nbsp;| &nbsp;작성자 닉네임 : ${detail.memberNickname} &nbsp;| &nbsp;아이디 : ${detail.memberId} &nbsp;| &nbsp;작성일 : ${detail.createDate}</section>
                <section class="updateContent-content">
                    ${detail.boardContent}
                </section>
                <div class="reply-btn-area">
                    <c:if test="${!empty param.cp}">
                        <button type="button" id="go-to-list-btn" onclick="location.href='${contextPath}/myPage/board?type=${param.type}'">목록으로</button>
                    </c:if>
                    <c:if test="${empty param.cp}">
                        <button type="button" id="go-to-list-btn" onclick="location.href='${contextPath}/myPage/board?type=${param.type}'">목록으로</button>
                    </c:if>
                    <button type="button" id="reply-btn">수정하기</button>
                    <button type="button" id="delete-btn">삭제하기</button>
                </div>
            </section>


            <!-- 댓글 영역 -->
            <section class="customer-inquiry2">
                <c:forEach var="reply" items="${rList}">
                    <section class="memberNick">${reply.memberNickName}<span id="cd">(  ${reply.createDate} )</span></section>
                    <section class="updateContent-content2"> ${reply.replyContent}</section>
                </c:forEach>
            </section>

        </section>
            
    </main>

    <jsp:include page="/WEB-INF/views/common/footer.jsp"/>

    <script>
        const contextPath = "${contextPath}";

        // 게시글 번호
        const boardNo = "${detail.boardNo}";

        // 게시글 제목
        const boardTitle = "${detail.boardTitle}";

        // 로그인한 회원 번호
        const loginMemberNo = "${loginMember.memberNo}";

        const boardContent = "${detail.boardContent}";

        // 로그인한 회원 닉네임
        const loginMemberNickName = "${loginMember.memberNickname}";
    </script>

    <script src="${contextPath}/resources/js/myPage/myPage-boardDetail.js"></script>
    
    
</body>
</html>