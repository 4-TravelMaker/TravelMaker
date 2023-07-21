<!-- 관리자 페이지 - 공지사항 작성 -->

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
    <link rel="stylesheet" href="${contextPath}/resources/css/Admin/Admin-noticePost-style.css">
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
                        <i class="fa-solid fa-bullhorn" style="color: #000000;"></i>
                        &nbsp;공지사항 관리
                    </section>
                </section>

                <!-- 공지사항 관리 내용 영역 -->
                <section>
                    공지사항 작성
                </section>

                <section class="announcement-modify">
                    <form action="#" method="get">

                        <table class="post-area">
                            <tr>
                                <td><input type="text" placeholder="제목을 입력해 주세요" id="post-title"></td>
                            </tr>
                            <tr>
                                <td class="post-date">
                                    <span>작성일 2023.07.05&nbsp;</span>
                                    <span>| 조회수 2039&nbsp;</span>
                                    <span>| ♥ 좋아요 249702</span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <textarea rows="50" cols="110" placeholder="내용을 입력해 주세요" id="post-writing-area"></textarea>
                                </td>
                            </tr>
                        </table>
        
                        <section class="modify-btn">
                            <button type="submit">수정</button>
                            <button type="button">취소</button>
                        </section>

                    </form>
                </section>

            </section>
            
        </section>

    </main>

	<jsp:include page="/WEB-INF/views/common/footer.jsp"/>

</body>
</html>