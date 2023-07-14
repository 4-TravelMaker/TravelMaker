<!-- 관리자 화면 - 회원 관리 -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- 문자열 관련 함수(메소드) 제공 JSTL (EL 형식으로 작성) --%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

    <link rel="stylesheet" href="${contextPath}/resources/css/main-style.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/Admin/Admin-memberAdmin-style.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/Admin/Admin-sideBar-main-style.css">

		<jsp:include page="/WEB-INF/views/common/header.jsp"/>

		<jsp:include page="/WEB-INF/views/common/admin-sideBar.jsp"/>

             <section class="right-section">

                <!-- 관리자 페이지 상단 우측 제목 -->
                <section>
                    <section class="title">
                        <i class="fa-solid fa-users-gear" style="color: #000000;"></i>
                        &nbsp;회원 관리
                    </section>
                </section>

                <!-- 회원 관리 내용 영역 -->
                <section>
                    <section class="search-area">
                        <input type="text" placeholder="아이디 입력" id="member-search">
                        <button id="search-btn">검색</button>
                    </section>
                    <section>
                        <a href="#">
                            <button type="submit" id="secession-btn">회원 탈퇴</button>
                        </a>
                    </section>
                </section>

                <section>
                    <table class="member-table">
                        <thead>
                            <tr class="table-bk">
                                <th>구분</th>
                                <th>회원 번호</th>
                                <th>아이디</th>
                                <th>이름</th>
                                <th>닉네임</th>
                                <th>주소</th>
                                <th>선호 테마</th>
                                <th>가입일</th>
                                <th>탈퇴 여부</th>
                            </tr>
                        </thead>

                        <tbody>
                            <c:forEach var="member" items="${requestScope.list}">
                                <tr>
                                    <td><input type="checkbox"></td>
                                    <td>${ member.memberNo }</td>
                                    <td>${ member.memberId }</td>
                                    <td>${ member.memberName }</td>
                                    <td>${ member.memberNickname }</td>
                                    <td>${ member.memberAddress }</td>
                                    <td>${ member.memberTheme }</td>
                                    <td>${ member.enrollDate }</td>
                                    <td>${ member.secessionFlag }</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </section>

                <section class="page-btn">
                    <img src="${contextPath}/resources/images/Admin/page.png">
                </section>
            </section>
            
        </section>
        
    </main>

	<jsp:include page="/WEB-INF/views/common/footer.jsp"/>

    <script src="../../../resources/js/Admin/Admin-memberAdmin.js"></script>
</body>
</html>