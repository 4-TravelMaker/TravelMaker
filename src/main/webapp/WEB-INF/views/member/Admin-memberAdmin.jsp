<!-- 관리자 화면 - 회원 관리 -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- 문자열 관련 함수(메소드) 제공 JSTL (EL 형식으로 작성) --%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

    <link rel="stylesheet" href="${contextPath}/resources/css/main-style.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/Admin-memberAdmin-style.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/Admin-sideBar-main-style.css">

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
                        <button type="submit">검색</button>
                    </section>
                    <section>
                        <a href="#">
                            <button type="submit" id="secession-btn">회원 탈퇴</button>
                        </a>
                    </section>
                </section>

                <section>
                    <table class="member-table">
                        <tr class="table-bk">
                            <th>구분</th>
                            <th>아이디</th>
                            <th>이름</th>
                            <th>닉네임</th>
                            <th>주소</th>
                            <th>선호 테마</th>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td>user01</td>
                            <td>유저일</td>
                            <td>일저유</td>
                            <td>서울시 강동구</td>
                            <td>자전거 여행</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td>user02</td>
                            <td>유저이</td>
                            <td>이저유</td>
                            <td>서울시 강서구</td>
                            <td>캠핑</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td>user03</td>
                            <td>유저삼</td>
                            <td>삼저유</td>
                            <td>서울시 강남구</td>
                            <td>차박</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td>user04</td>
                            <td>유저사</td>
                            <td>사저유</td>
                            <td>서울시 강북구</td>
                            <td>애견 동반 여행</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td>user01</td>
                            <td>유저일</td>
                            <td>일저유</td>
                            <td>서울시 강동구</td>
                            <td>자전거 여행</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td>user02</td>
                            <td>유저이</td>
                            <td>이저유</td>
                            <td>서울시 강서구</td>
                            <td>캠핑</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td>user03</td>
                            <td>유저삼</td>
                            <td>삼저유</td>
                            <td>서울시 강남구</td>
                            <td>차박</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td>user04</td>
                            <td>유저사</td>
                            <td>사저유</td>
                            <td>서울시 강북구</td>
                            <td>애견 동반 여행</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td>user01</td>
                            <td>유저일</td>
                            <td>일저유</td>
                            <td>서울시 강동구</td>
                            <td>자전거 여행</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td>user02</td>
                            <td>유저이</td>
                            <td>이저유</td>
                            <td>서울시 강서구</td>
                            <td>캠핑</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td>user03</td>
                            <td>유저삼</td>
                            <td>삼저유</td>
                            <td>서울시 강남구</td>
                            <td>차박</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td>user04</td>
                            <td>유저사</td>
                            <td>사저유</td>
                            <td>서울시 강북구</td>
                            <td>애견 동반 여행</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td>user01</td>
                            <td>유저일</td>
                            <td>일저유</td>
                            <td>서울시 강동구</td>
                            <td>자전거 여행</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td>user02</td>
                            <td>유저이</td>
                            <td>이저유</td>
                            <td>서울시 강서구</td>
                            <td>캠핑</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"></td>
                            <td>user03</td>
                            <td>유저삼</td>
                            <td>삼저유</td>
                            <td>서울시 강남구</td>
                            <td>차박</td>
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