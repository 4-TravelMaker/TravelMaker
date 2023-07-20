<!-- 관리자 페이지 - 일대일 문의 답변 -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- 문자열 관련 함수(메소드) 제공 JSTL (EL 형식으로 작성) --%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>관리자 페이지</title>
    <link rel="shortcut icon" type="image/x-icon" href="${contextPath}/resources/images/small_logo.png">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${contextPath}/resources/css/main-style.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/Admin/Admin-OneOnOneInquiryReply-style.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/Admin/Admin-sideBar-main-style.css">
    <script src="https://kit.fontawesome.com/ef988defcf.js" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
</head>
<body>
    <main>

		<jsp:include page="/WEB-INF/views/common/header.jsp"/>

		<jsp:include page="/WEB-INF/views/common/admin-sideBar.jsp"/>

            <section class="right-section">

                <!-- 관리자 페이지 상단 우측 제목 -->
                <section>
                    <section class="title">
                        <i class="fa-solid fa-circle-question" style="color: #000000;"></i>
                        &nbsp;1:1 문의
                    </section>
                </section>

                <!-- 일대일 문의 상세 조회 영역 -->
                <section class="customer-inquiry">
                    <section>
                        여행글 보고 여행 가고 싶어졌어요 책임지세요
                    </section>
                    <section>작성자 이름 : 유저일 &nbsp;| &nbsp;아이디 : user01 &nbsp;| &nbsp;작성일 : 2023.07.05</section>
                    <section>
                        여행 글 보다가 여행이 너무 가고 싶어졌어요<br>
                        여행비 빌려주세요
                    </section>

                    <!-- 일대일 문의 답변 영역 -->
                    <section>답변하기</section>
                    <section>
                        <input type="text" placeholder="답변 제목을 입력하세요" id="inquiry-title">
                    </section>
                    <section>
                        <textarea placeholder="답변 내용을 입력하세요" id="inquiry-content"></textarea>
                    </section>
                    <section>
                        <button class="post-btn">작성</button>
                        <button class="post-btn">취소</button>
                    </section>
                </section>

            </section>
        
    </main>

	<jsp:include page="/WEB-INF/views/common/footer.jsp"/>

    
</body>
</html>