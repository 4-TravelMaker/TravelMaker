<!-- 관리자 페이지 - 일대일 문의 답변 -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- 문자열 관련 함수(메소드) 제공 JSTL (EL 형식으로 작성) --%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

    <link rel="stylesheet" href="${contextPath}/resources/css/main-style.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/Admin-OneOnOneInquiryReply-style.css">
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