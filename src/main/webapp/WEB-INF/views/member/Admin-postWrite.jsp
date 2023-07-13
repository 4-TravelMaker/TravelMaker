<!-- 관리자 페이지 - 관리자 게시물 작성(지역, 테마) -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- 문자열 관련 함수(메소드) 제공 JSTL (EL 형식으로 작성) --%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

    <link rel="stylesheet" href="${contextPath}/resources/css/main-style.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/Admin/Admin-postWrite-style.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/Admin/Admin-sideBar-main-style.css">

		<jsp:include page="/WEB-INF/views/common/header.jsp"/>

		<jsp:include page="/WEB-INF/views/common/admin-sideBar.jsp"/>

            <section class="right-section">

                <!-- 관리자 페이지 상단 우측 제목 -->
                <section>
                    <section class="title">
                        <i class="fa-solid fa-thumbtack" style="color: #000000;"></i>
                        &nbsp;관리자 게시물 작성
                    </section>
                </section>

                <!-- 공지사항 관리 내용 영역 -->
                <section class="admin-post">
                    <form action="#" method="get">

                        <table class="post-area">
                            <tr>
                                <!-- 대분류/중분류 선택 -->
                                <select name="category1" id="category">
                                    <option value="선택">대분류 선택</option>
                                    <option value="지역">지역</option>
                                    <option value="테마">테마</option>
                                </select>
                                <select name="category1">
                                    <option value="선택">중분류 선택</option>
                                    <option value="지역">서울</option>
                                    <option value="테마">부산</option>
                                    <option value="테마">대구</option>
                                    <option value="테마">인천</option>
                                    <option value="테마">광주</option>
                                    <option value="테마">대전</option>
                                    <option value="테마">울산</option>
                                    <option value="테마">세종</option>
                                    <option value="테마">경기</option>
                                    <option value="테마">강원</option>
                                    <option value="테마">충북</option>
                                    <option value="테마">충남</option>
                                    <option value="테마">전북</option>
                                    <option value="테마">전남</option>
                                    <option value="테마">경북</option>
                                    <option value="테마">경남</option>
                                    <option value="테마">제주</option>
                                </select>
                            </tr>
                            <tr>
                                <!-- 내용 작성 영역 -->
                                <td><input type="text" placeholder="제목을 입력해 주세요" id="post-title" maxlength="30"></td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="file">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <textarea rows="50" cols="110" placeholder="내용을 입력해 주세요" id="post-writing-area"></textarea>
                                </td>
                            </tr>
                            <tr>
                                <td class="text-count">
                                    <span id="text-count">0</span>/1000
                                </td>
                            </tr>
                        </table>
        
                        <section class="modify-btn">
                            <button type="submit">수정</button>
                            <button type="button">취소</button>
                        </section>

                    </form>
                </section>

            </section>
            
        </section>
        
    </main>

	<jsp:include page="/WEB-INF/views/common/footer.jsp"/>

	<script>

        document.getElementById("post-writing-area").addEventListener("keyup", function(){

            const regExp = /^{,1000}$/;
            const textCount = document.getElementById("text-count");

            if(regExp.test(this.value)){
                textCount.innerText = this.value.length + "/1000";
            }
        })

    </script>
    
</body>
</html>