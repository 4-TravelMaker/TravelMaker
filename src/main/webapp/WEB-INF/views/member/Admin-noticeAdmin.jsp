<!-- 관리자 화면 - 공지사항 관리 -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- 문자열 관련 함수(메소드) 제공 JSTL (EL 형식으로 작성) --%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

    <link rel="stylesheet" href="${contextPath}/resources/css/main-style.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/Admin-noticeAdmin-style.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/Admin-sideBar-main-style.css">

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
                    <section class="search-area">
                        <input type="text" placeholder="닉네임 입력" id="member-search">
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
                            <th>제목</th>
                            <th>작성일</th>
                            <th>조회수</th>
                            <th>좋아요</th>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td>일저유</td>
                            <td>안녕하세요</td>
                            <td>2023.07.05</td>
                            <td>120</td>
                            <td>200</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td>이저유</td>
                            <td>반갑습니다</td>
                            <td>2023.07.05</td>
                            <td>120</td>
                            <td>200</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td>삼저유</td>
                            <td>배고프네요</td>
                            <td>2023.07.05</td>
                            <td>120</td>
                            <td>200</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td>사저유</td>
                            <td>졸려요</td>
                            <td>2023.07.05</td>
                            <td>120</td>
                            <td>200</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td>오저유</td>
                            <td>친하게 지내용</td>
                            <td>2023.07.05</td>
                            <td>120</td>
                            <td>200</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td>일저유</td>
                            <td>안녕하세요</td>
                            <td>2023.07.05</td>
                            <td>120</td>
                            <td>200</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td>이저유</td>
                            <td>반갑습니다</td>
                            <td>2023.07.05</td>
                            <td>120</td>
                            <td>200</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td>삼저유</td>
                            <td>배고프네요</td>
                            <td>2023.07.05</td>
                            <td>120</td>
                            <td>200</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td>사저유</td>
                            <td>졸려요</td>
                            <td>2023.07.05</td>
                            <td>120</td>
                            <td>200</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td>오저유</td>
                            <td>친하게 지내용</td>
                            <td>2023.07.05</td>
                            <td>120</td>
                            <td>200</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td>일저유</td>
                            <td>안녕하세요</td>
                            <td>2023.07.05</td>
                            <td>120</td>
                            <td>200</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td>이저유</td>
                            <td>반갑습니다</td>
                            <td>2023.07.05</td>
                            <td>120</td>
                            <td>200</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td>삼저유</td>
                            <td>배고프네요</td>
                            <td>2023.07.05</td>
                            <td>120</td>
                            <td>200</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td>사저유</td>
                            <td>졸려요</td>
                            <td>2023.07.05</td>
                            <td>120</td>
                            <td>200</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td>오저유</td>
                            <td>친하게 지내용</td>
                            <td>2023.07.05</td>
                            <td>120</td>
                            <td>200</td>
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

    <script src="${contextPath}/resources/js/Admin/Admin-home.js"></script>
</body>
</html>