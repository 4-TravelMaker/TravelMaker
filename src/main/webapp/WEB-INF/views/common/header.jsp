<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- 문자열 관련 함수(메소드) 제공 JSTL (EL 형식으로 작성) --%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

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

            <section class="login-area">
                <button class="btn-style">
                    <a href="${contextPath}/member/login">로그인</a>
                </button>
                <button class="btn-style">
                    <a href="${contextPath}/member/signUp">회원가입</a>
                </button>
            </section>
        </section>
    </header>

    <nav>
        <section id="nav">
            <section class="nav-menu">
                <a href="#">지역</a>
            </section>
            <section class="nav-menu">
                <a href="#">테마</a>
            </section>
            <section class="nav-menu">
                <a href="#">여행 계획하기</a>
            </section>
            <section class="nav-menu">
                <a href="#">여행 리뷰</a>
            </section>
            <section class="nav-menu">
                <a href="${contextPath}/boardNotice/list?type=5">공지사항</a>
            </section>
        </section>
    </nav>