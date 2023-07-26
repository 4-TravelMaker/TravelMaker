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
                <a href="${contextPath}/admin/selectAll">
                    <button>회원 관리</button>
                </a>
            </section>

            <section class="left-section-btn">
                <a href="${contextPath}/admin/selectPost">
                    <button>게시글 관리</button>
                </a>
            </section>

            <section class="left-section-btn">
                <a href="${contextPath}/admin/selectNotification">
                    <button>공지사항 관리</button>
                </a>
            </section>

            <section class="left-section-btn">
                <a href="${contextPath}/admin/OneOnOneInquiry/list?type=6">
                    <button>1:1 문의</button>
                </a>
            </section>
            
        </section>
    </section>