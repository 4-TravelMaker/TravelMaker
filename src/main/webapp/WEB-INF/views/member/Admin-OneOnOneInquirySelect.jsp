<!-- 관리자 페이지 - 일대일 문의 조회 -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- 문자열 관련 함수(메소드) 제공 JSTL (EL 형식으로 작성) --%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

    <link rel="stylesheet" href="${contextPath}/resources/css/main-style.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/Admin-OneOnOneInquirySelect-style.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/Admin-sideBar-main-style.css">

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

                <!-- 회원 검색 및 삭제 버튼 영역 -->
                <section>
                    <section class="search-area">
                        <input type="text" placeholder="닉네임 입력" id="member-search">
                        <button type="submit">검색</button>
                    </section>
                    <section>
                        <a href="#">
                            <button type="submit" class="modify-btn">삭제</button>
                        </a>
                    </section>
                </section>

                <!-- 일대일 문의 조회 목록 영역 -->
                <section>
                    <table class="post-table">
                        <tr class="table-bk">
                            <th>구분</th>
                            <th>닉네임</th>
                            <th>제목</th>
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