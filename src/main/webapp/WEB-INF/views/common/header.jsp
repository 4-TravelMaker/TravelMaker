<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
                    <a href="#">로그인</a>
                </button>
                <button class="btn-style">
                    <a href="#">회원가입</a>
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
        </section>
    </nav>