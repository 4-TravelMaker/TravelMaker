<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- JSTL은 사용되는 JSP 파일마다 작성되어야 한다. -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 관리자 페이지 왼쪽 사이드 메뉴 -->
<section id="middle">
	<section class="left-section">
		<section class="left-section-head">마이 페이지</section>
        <section class="left-section-profile">
            <c:if test="${empty loginMember.profileImage}">
                <img src="${contextPath}/resources/images/Admin/admin-profile.jpg" id="real-profile-image">
            </c:if>

            <c:if test="${!empty loginMember.profileImage}">
                <img src="${contextPath}${loginMember.profileImage}" id="real-profile-image">
            </c:if>
            <section>${loginMember.memberNickname}</section>
        </section>
        
        <section class="left-section-btn-area">
            <section class="left-section-btn-box">
                <a href="#">회원 정보 수정</a>
            </section>

            <section class="left-section-btn-box">
                <a href="${contextPath}/myPage/board">내 게시글/댓글 관리</a>
            </section>
            <section class="left-section-btn-box">
                <a href="${contextPath}/myPage/OneOnOneInquiry/list?type=6">1:1 문의</a>
            </section>
            <section class="left-section-btn-box">
                <a href="${contextPath}/myPage/secession">회원 탈퇴</a>
            </section>
        </section>
    </section>