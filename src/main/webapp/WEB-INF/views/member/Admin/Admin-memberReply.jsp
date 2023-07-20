<!-- 관리자 페이지 - 회원 댓글 관리 -->

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
    <link rel="stylesheet" href="${contextPath}/resources/css/Admin/Admin-memberReply-style.css">
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
                        <i class="fa-solid fa-comment-dots" style="color: #000000;"></i>
                        &nbsp;댓글 관리
                    </section>
                </section>

                <!-- 댓글 관리 내용 영역 -->
                <section>
                    <section class="search-area">
                        <input type="text" placeholder="아이디 / 닉네임 입력" id="member-search">
                        <button type="submit">검색</button>
                    </section>
                    <section>
                        <a href="#">
                            <button type="submit" class="modify-btn">수정</button>
                        </a>
                        <a href="#">
                            <button type="submit" class="modify-btn">삭제</button>
                        </a>
                    </section>
                </section>

                <section>
                    <table class="reply-table">
                        <tr class="table-bk">
                            <th>구분</th>
                            <th>닉네임</th>
                            <th>댓글 내용</th>
                            <th>작성일</th>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td>일저유</td>
                            <td>안녕하세요</td>
                            <td>2023.07.05</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td>이저유</td>
                            <td>반갑습니다</td>
                            <td>2023.07.05</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td>삼저유</td>
                            <td>배고프네요</td>
                            <td>2023.07.05</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td>사저유</td>
                            <td>졸려요</td>
                            <td>2023.07.05</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td>오저유</td>
                            <td>친하게 지내용</td>
                            <td>2023.07.05</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td>일저유</td>
                            <td>안녕하세요</td>
                            <td>2023.07.05</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td>이저유</td>
                            <td>반갑습니다</td>
                            <td>2023.07.05</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td>삼저유</td>
                            <td>배고프네요</td>
                            <td>2023.07.05</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td>사저유</td>
                            <td>졸려요</td>
                            <td>2023.07.05</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td>오저유</td>
                            <td>친하게 지내용</td>
                            <td>2023.07.05</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td>일저유</td>
                            <td>안녕하세요</td>
                            <td>2023.07.05</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td>이저유</td>
                            <td>반갑습니다</td>
                            <td>2023.07.05</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td>삼저유</td>
                            <td>배고프네요</td>
                            <td>2023.07.05</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td>사저유</td>
                            <td>졸려요</td>
                            <td>2023.07.05</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td>오저유</td>
                            <td>친하게 지내용</td>
                            <td>2023.07.05</td>
                        </tr>

                    </table>

                </section>
                <section class="page-btn">
                    <img src="${contextPath}/resources/images/Admin/page.png">
                </section>
            </section>
            
        </section>
        
    </main>

	<jsp:include page="/WEB-INF/views/common/footer.jsp"/>

    
</body>
</html>