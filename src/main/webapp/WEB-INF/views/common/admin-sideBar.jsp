<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- JSTL은 사용되는 JSP 파일마다 작성되어야 한다. -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 관리자 페이지 왼쪽 사이드 메뉴 -->
<section id="middle">
    <section class="left-section">
        <section class="left-section-head">관리자 페이지</section>
        <section class="left-section-image">
            <img src="${contextPath}/resources/images/Admin/admin-profile.jpg" width="180px" height="auto" id="admin-profile"><br>
            관리자 님
        </section>
        <!-- 마이 페이지 왼쪽 메뉴 -->
        <section>

            <section class="left-section-btn">
                <a href="/TravelMaker/admin/home">
                    <button>홈 화면 관리</button>
                </a>
            </section>

            <section class="left-section-btn">
                <a href="/TravelMaker/admin/memberAdmin">
                    <button>회원 관리</button>
                </a>
            </section>

            <section class="left-section-btn">
                <a href="/TravelMaker/admin/memberPost">
                    <button>게시글 관리</button>
                </a>
            </section>

            <section class="left-section-btn">
                <a href="/TravelMaker/admin/memberReply">
                    <button>댓글 관리</button>
                </a>
            </section>

            <section class="left-section-btn">
                <a href="/TravelMaker/admin/noticeAdmin">
                    <button>공지사항 관리</button>
                </a>
            </section>

            <section class="left-section-btn">
                <a href="/TravelMaker/admin/OneOnOneInquiry">
                    <button>1:1 문의</button>
                </a>
            </section>

            <section class="left-section-btn">
                <a href="/TravelMaker/admin/postWrite">
                    <button>게시물 작성</button>
                </a>
            </section>
            
        </section>
    </section>