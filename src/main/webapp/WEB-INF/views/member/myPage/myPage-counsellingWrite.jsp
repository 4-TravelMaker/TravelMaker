<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- 문자열 관련 함수(메소드) 제공 JSTL (EL 형식으로 작성) --%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

    <link rel="stylesheet" href="${contextPath}/resources/css/myPage-counsellingWrite.css">

	<!-- header -->
    <jsp:include page="/WEB-INF/views/common/header.jsp"/>
    <!-- myPage-sideBar -->
    <jsp:include page="/WEB-INF/views/common/myPage-sideBar.jsp"/>

            <section class="right-section">
                <section class="right-section-head">1:1 문의<hr></section>

                <section class="right-section-area">

                    <section class="right-section-subhead">
                        <section id="subtitle">
                            <span>접수해주신 문의는 서비스 1~2일 내에 답변해 드립니다.</span><br>
                            <span>작성하신 내용에 욕설, 성희롱 등의 내용이 포함된 경우 관련 법령에 따라 조치될 수 있습니다.</span>
                        </section>
                    </section>

                    <form action="#" onsubmit="return counsellingValidate()">
                        <section id="board-area">
                            <section>
                                <input class="board-title" placeholder="제목을 입력해주세요." id="input-title">
                                <textarea spellcheck="false" placeholder="문의 내용을 입력해주세요.(1000자 이내)" id="input-content"></textarea>
                                <div id="text-counter"><span id="counter">0</span>/1000</div>
                                <div id="submit-btn-area">
                                    <button>작성</button>
                                    <button type="button">취소</button>
                                </div>
                            </section>
                        </section>
                    </form>
                </section>
            </section>
        </section>
    </main>

    <!-- footer -->
    <jsp:include page="/WEB-INF/views/common/footer.jsp"/>

    <script src="${contextPath}/resources/js/myPage/myPage-counsellingWrite.js"></script>
</body>
</html>