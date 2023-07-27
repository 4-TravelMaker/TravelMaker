<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- 문자열 관련 함수(메소드) 제공 JSTL (EL 형식으로 작성) --%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

    <link rel="stylesheet" href="${contextPath}/resources/css/myPage-reply.css">

	<!-- header -->
    <jsp:include page="/WEB-INF/views/common/header.jsp"/>
    <!-- myPage-sideBar -->
    <jsp:include page="/WEB-INF/views/common/myPage-sideBar.jsp"/>

            <section class="right-section">
                <section class="right-section-head">내 게시글 / 댓글 관리<hr></section>

                <section class="right-section-area">

                    <section class="right-section-subhead">
                        <section id="subtitle">
                            <a href="#">내 게시글</a>
                            <span> | </span>
                            <a href="#" style="font-weight: bold;">댓글</a>
                        </section>

                        <section id="btn-area">
                            <button class="remove-btn" id="remove-sel">선택 삭제</button>
                            <button class="remove-btn" id="remove-all">전체 삭제</button>
                        </section>
                    </section>

                    <section>
                        <table class="reply-table">
                            <tr class="table-bk">
                                <th>구분</th>
                                <th>닉네임</th>
                                <th>아이디</th>
                                <th>제목</th>
                                <th>작성일</th>
                                <th>조회수</th>
                                <th>좋아요</th>
                            </tr>
                            <tr class="tr">
                                <td><input type="checkbox" class="check"></td>
                                <td>일저유</td>
                                <td>user01</td>
                                <td>안녕하세요</td>
                                <td>2023.07.05</td>
                                <td>120</td>
                                <td>200</td>
                            </tr>
                            <tr class="tr">
                                <td><input type="checkbox" class="check"></td>
                                <td>이저유</td>
                                <td>user02</td>
                                <td>반갑습니다</td>
                                <td>2023.07.05</td>
                                <td>120</td>
                                <td>200</td>
                            </tr>
                            <tr class="tr" class="tr">
                                <td><input type="checkbox" class="check"></td>
                                <td>삼저유</td>
                                <td>user03</td>
                                <td>배고프네요</td>
                                <td>2023.07.05</td>
                                <td>120</td>
                                <td>200</td>
                            </tr>
                            <tr class="tr">
                                <td><input type="checkbox" class="check"></td>
                                <td>사저유</td>
                                <td>user04</td>
                                <td>졸려요</td>
                                <td>2023.07.05</td>
                                <td>120</td>
                                <td>200</td>
                            </tr>
                            <tr class="tr">
                                <td><input type="checkbox" class="check"></td>
                                <td>오저유</td>
                                <td>user05</td>
                                <td>친하게 지내용</td>
                                <td>2023.07.05</td>
                                <td>120</td>
                                <td>200</td>
                            </tr>
                            <tr class="tr">
                                <td><input type="checkbox" class="check"></td>
                                <td>일저유</td>
                                <td>user01</td>
                                <td>안녕하세요</td>
                                <td>2023.07.05</td>
                                <td>120</td>
                                <td>200</td>
                            </tr>
                            <tr class="tr">
                                <td><input type="checkbox" class="check"></td>
                                <td>이저유</td>
                                <td>user02</td>
                                <td>반갑습니다</td>
                                <td>2023.07.05</td>
                                <td>120</td>
                                <td>200</td>
                            </tr>
                            <tr class="tr">
                                <td><input type="checkbox" class="check"></td>
                                <td>삼저유</td>
                                <td>user03</td>
                                <td>배고프네요</td>
                                <td>2023.07.05</td>
                                <td>120</td>
                                <td>200</td>
                            </tr>
                            <tr class="tr">
                                <td><input type="checkbox" class="check"></td>
                                <td>사저유</td>
                                <td>user04</td>
                                <td>졸려요</td>
                                <td>2023.07.05</td>
                                <td>120</td>
                                <td>200</td>
                            </tr>
                            <tr class="tr">
                                <td><input type="checkbox" class="check"></td>
                                <td>오저유</td>
                                <td>user05</td>
                                <td>친하게 지내용</td>
                                <td>2023.07.05</td>
                                <td>120</td>
                                <td>200</td>
                            </tr>
                            <tr class="tr">
                                <td><input type="checkbox" class="check"></td>
                                <td>일저유</td>
                                <td>user01</td>
                                <td>안녕하세요</td>
                                <td>2023.07.05</td>
                                <td>120</td>
                                <td>200</td>
                            </tr>
                            <tr class="tr">
                                <td><input type="checkbox" class="check"></td>
                                <td>이저유</td>
                                <td>user02</td>
                                <td>반갑습니다</td>
                                <td>2023.07.05</td>
                                <td>120</td>
                                <td>200</td>
                            </tr>
                            <tr class="tr">
                                <td><input type="checkbox" class="check"></td>
                                <td>삼저유</td>
                                <td>user03</td>
                                <td>배고프네요</td>
                                <td>2023.07.05</td>
                                <td>120</td>
                                <td>200</td>
                            </tr>
                            <tr class="tr">
                                <td><input type="checkbox" class="check"></td>
                                <td>사저유</td>
                                <td>user04</td>
                                <td>졸려요</td>
                                <td>2023.07.05</td>
                                <td>120</td>
                                <td>200</td>
                            </tr>
                            <tr class="tr">
                                <td><input type="checkbox" class="check"></td>
                                <td>오저유</td>
                                <td>user05</td>
                                <td>친하게 지내용</td>
                                <td>2023.07.05</td>
                                <td>120</td>
                                <td>200</td>
                            </tr>
    
                        </table>
    
                    </section>
                </section>
            </section>
        </section>
    </main>

	<!-- footer -->
    <jsp:include page="/WEB-INF/views/common/footer.jsp"/>

    <script src="${contextPath}/resources/js/myPage/myPage-reply.js"></script>
</body>
</html>