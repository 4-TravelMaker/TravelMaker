<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- 문자열 관련 함수(메소드) 제공 JSTL (EL 형식으로 작성) --%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

    <link rel="stylesheet" href="${contextPath}/resources/css/myPage-counselling.css">

	<!-- header -->
    <jsp:include page="/WEB-INF/views/common/header.jsp"/>
    <!-- myPage-sideBar -->
    <jsp:include page="/WEB-INF/views/common/myPage-sideBar.jsp"/>
    
            <section class="right-section">
                <section class="right-section-head">1:1 문의<hr></section>

                <section class="right-section-area">

                    <section class="right-section-subhead">
                        <section id="subtitle">
                            <a href="#" style="font-weight: bold;">문의한 게시글</a>
                        </section>

                        <section id="btn-area">
                            <button class="counselling-btn" id="counselling">
                                <a href="#">1:1 문의하기</a>
                            </button>
                        </section>
                    </section>

                    <section id="test">
                        <section>구분</section>
                        <section>문의 제목</section>
                    </section>

                    <section id="board-area">
                        <section>
                            <input type="checkbox" name="check" class="check" value="board0">
                            <div class="board-title">문의 제목 1</div>
                            <div class="contents">
                                <textarea spellcheck="false">문의 내용 1</textarea>
                                <div class="answer-title">답변</div>
                                <textarea spellcheck="false">답변 내용 1</textarea>
                            </div>
                        </section>

                        <hr class="hr">

                        <section>
                            <input type="checkbox" name="check" class="check" value="board0">
                            <div class="board-title">문의 제목 2</div>
                            <div class="contents">
                                <textarea spellcheck="false">문의 내용 2</textarea>
                                <div class="answer-title">답변</div>
                                <textarea spellcheck="false">답변 내용 2</textarea>
                            </div>
                        </section>

                        <hr class="hr">

                        <section>
                            <input type="checkbox" name="check" class="check" value="board0">
                            <div class="board-title">문의 제목 3</div>
                            <div class="contents">
                                <textarea spellcheck="false">문의 내용 3</textarea>
                                <div class="answer-title">답변</div>
                                <textarea spellcheck="false">답변 내용 3</textarea>
                            </div>
                        </section>

                        <hr class="hr">
                        
                        <section>
                            <input type="checkbox" name="check" class="check" value="board0">
                            <div class="board-title">문의 제목 4</div>
                            <div class="contents">
                                <textarea spellcheck="false">문의 내용 4</textarea>
                                <div class="answer-title">답변</div>
                                <textarea spellcheck="false">답변 내용 4</textarea>
                            </div>
                        </section>
                        
                        <hr class="hr">
                            
                        <section>
                            <input type="checkbox" name="check" class="check" value="board0">
                            <div class="board-title">문의 제목 5</div>
                            <div class="contents">
                                <textarea spellcheck="false">문의 내용 5</textarea>
                                <div class="answer-title">답변</div>
                                <textarea spellcheck="false">답변 내용 5</textarea>
                            </div>
                        </section>
                            
                        <hr class="hr">
                        
                        <section>
                            <input type="checkbox" name="check" class="check" value="board0">
                            <div class="board-title">문의 제목 6</div>
                            <div class="contents">
                                <textarea spellcheck="false">문의 내용 6</textarea>
                                <div class="answer-title">답변</div>
                                <textarea spellcheck="false">답변 내용 6</textarea>
                            </div>
                        </section>
                            
                        <hr class="hr">
                            
                        <section>
                            <input type="checkbox" name="check" class="check" value="board0">
                            <div class="board-title">문의 제목 7</div>
                            <div class="contents">
                                <textarea spellcheck="false">문의 내용 7</textarea>
                                <div class="answer-title">답변</div>
                                <textarea spellcheck="false">답변 내용 7</textarea>
                            </div>
                        </section>
                            
                        <hr class="hr">
                            
                        <section>
                            <input type="checkbox" name="check" class="check" value="board0">
                            <div class="board-title">문의 제목 8</div>
                            <div class="contents">
                                <textarea spellcheck="false">문의 내용 8</textarea>
                                <div class="answer-title">답변</div>
                                <textarea spellcheck="false">답변 내용 8</textarea>
                            </div>
                        </section>
                            
                        <hr class="hr">
                            
                        <section>
                            <input type="checkbox" name="check" class="check" value="board0">
                            <div class="board-title">문의 제목 9</div>
                            <div class="contents">
                                <textarea spellcheck="false">문의 내용 9</textarea>
                                <div class="answer-title">답변</div>
                                <textarea spellcheck="false">답변 내용 9</textarea>
                            </div>
                        </section>

                        <hr class="hr">

                        <section>
                            <input type="checkbox" name="check" class="check" value="board0">
                            <div class="board-title">문의 제목 10</div>
                            <div class="contents">
                                <textarea spellcheck="false">문의 내용 10</textarea>
                                <div class="answer-title">답변</div>
                                <textarea spellcheck="false">답변 내용 10</textarea>
                            </div>
                        </section>

                        <hr class="hr">
                    </section>
                </section>
            </section>
        </section>
    </main>

    <!-- footer -->
    <jsp:include page="/WEB-INF/views/common/footer.jsp"/>

    <script src="${contextPath}/resources/js/myPage/myPage-counselling.js"></script>
</body>
</html>