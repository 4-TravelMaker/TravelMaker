<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- 문자열 관련 함수(메소드) 제공 JSTL (EL 형식으로 작성) --%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!-- <link rel="stylesheet" href="${contextPath}/resources/css/main-style.css"> -->
<link rel="stylesheet" href="${contextPath}/resources/css/main-style.css">
    <header>
        <section class="head">
            <section id="logo">
                <a href="${contextPath}">
                    <img src="${contextPath}/resources/images/logo.png" width="100%">
                </a>
            </section>

            <section></section>

            <section id="search-area">
                <form action="#" name="search-form">
                    <fieldset>
                        <section>
                            <input type="search" id="query" name="query" autocomplete="off">
                            <button type="submit" id="search-btn" class="fa-solid fa-magnifying-glass"></button>
                        </section>
                    </fieldset>
                </form>
            </section>
            <section></section>
            
        
        <!-- <section class="ass"> -->
            <c:choose>
                <c:when test="${empty sessionScope.loginMember}">
                    <section class="login-area2">
                        <button class="btn-style">
                            <a href="${contextPath}/member/login">로그인</a>
                        </button>
                        <button class="btn-style">
                            <a href="${contextPath}/member/signUp">회원가입</a>
                        </button>
                    </section>
                </c:when>
                <c:otherwise>
                    <section class="login-area">
                    
                    <!-- 여기 부분에 이프문 작성 -->
                    <!-- 프로필 이미지가 없을 경우 -->
                        <div class="loginArea5">
                                <c:if test="${empty loginMember.profileImage}">
                                    <a href="${contextPath}//member/myPage/changeInfo">
                                        <img src="${contextPath}/resources/images/Admin/admin-profile.jpg">
                                    </a>
                                </c:if>

                                <!-- 프로필 이미지가 있을 경우 -->
                                <c:if test="${!empty loginMember.profileImage}">
                                   <a href="${contextPath}//member/myPage/changeInfo"><img src="${contextPath}${loginMember.profileImage}">
                                   </a>
                                </c:if>
                                <span id="nickname-member">${loginMember.memberNickname}</span>
                            <button class="logout-btn-style">                    
                                <a href="${contextPath}/memeber/logout">로그아웃</a>
                            </button>
                        </div>
                    </section>
                </c:otherwise>
            </c:choose>
        <!-- </section> -->
       
    </section>
    </header>

    <nav>
        <section id="nav">
            <section class="nav-menu">
                <a href="#">지역</a>
            </section>
            <section class="nav-menu">
                <a href="${contextPath}/theme/list?type=2">테마</a>
            </section>
            <section class="nav-menu">
                <a href="#">여행 계획하기</a>
            </section>
            <section class="nav-menu">
                <a href="${contextPath}/travelReview/list?type=4">여행 리뷰</a>
            </section>
            <section class="nav-menu">
                <a href="${contextPath}/boardNotice/list?type=5">공지사항</a>
            </section>
        </section>
    </nav>