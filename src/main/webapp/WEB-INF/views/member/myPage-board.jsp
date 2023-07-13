<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- 문자열 관련 함수(메소드) 제공 JSTL (EL 형식으로 작성) --%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
	
	<title>마이 페이지</title>
    <link rel="stylesheet" href="${contextPath}/resources/css/myPage-board.css">
    
    <!-- header -->
    <jsp:include page="/WEB-INF/views/common/header.jsp"/>
    <!-- myPage-sideBar -->
    <jsp:include page="/WEB-INF/views/common/myPage-sideBar.jsp"/>

            <section class="right-section">
                <section class="right-section-head">내 게시글 / 댓글 관리<hr></section>

                <section class="right-section-area">

                    <section class="right-section-subhead">
                        <section id="subtitle">
                            <a href="#" style="font-weight: bold;">내 게시글</a>
                            <span> | </span>
                            <a href="#">댓글</a>
                        </section>

                        <section id="btn-area">
                            <button class="remove-btn" id="remove-sel">선택 삭제</button>
                            <button class="remove-btn" id="remove-all">전체 삭제</button>
                        </section>
                    </section>

                    <section id="test">
                        <section>구분</section>
                        <section>게시글 제목</section>
                    </section>

                    <section id="board-area">
                        <section>
                            <input type="checkbox" name="check" class="check" value="board0">
                            <div class="board-title">게시글 제목 1</div>
                            <div class="contents">
                                <textarea spellcheck="false">게시글 내용 1</textarea>
                                <button type="button" class="board-btn modify">수정</button>
                                <button type="button" class="board-btn delete">삭제</button>
                            </div>
                        </section>

                        <hr class="hr">

                        <section>
                            <input type="checkbox" name="board" class="check" value="board0">
                            <div class="board-title">게시글 제목 2</div>
                            <div class="contents">
                                <textarea spellcheck="false">게시글 내용 2</textarea>
                                <button type="button" class="board-btn modify">수정</button>
                                <button type="button" class="board-btn delete">삭제</button>
                            </div>
                        </section>

                        <hr class="hr">

                        <section>
                            <input type="checkbox" name="board" class="check" value="board0">
                            <div class="board-title">게시글 제목 3</div>
                            <div class="contents">
                                <textarea spellcheck="false">게시글 내용 3</textarea>
                                <button type="button" class="board-btn modify">수정</button>
                                <button type="button" class="board-btn delete">삭제</button>
                            </div>
                        </section>

                        <hr class="hr">
                        
                        <section>
                            <input type="checkbox" name="board" class="check" value="board0">
                            <div class="board-title">게시글 제목 4</div>
                            <div class="contents">
                                <textarea spellcheck="false">게시글 내용 4</textarea>
                                <button type="button" class="board-btn modify">수정</button>
                                <button type="button" class="board-btn delete">삭제</button>
                            </div>
                        </section>
                        
                        <hr class="hr">
                            
                        <section>
                            <input type="checkbox" name="board" class="check" value="board0">
                            <div class="board-title">게시글 제목 5</div>
                            <div class="contents">
                                <textarea spellcheck="false">게시글 내용 5</textarea>
                                <button type="button" class="board-btn modify">수정</button>
                                <button type="button" class="board-btn delete">삭제</button>
                            </div>
                        </section>
                            
                        <hr class="hr">
                        
                        <section>
                            <input type="checkbox" name="board" class="check" value="board0">
                            <div class="board-title">게시글 제목 6</div>
                            <div class="contents">
                                <textarea spellcheck="false">게시글 내용 6</textarea>
                                <button type="button" class="board-btn modify">수정</button>
                                <button type="button" class="board-btn delete">삭제</button>
                            </div>
                        </section>
                            
                        <hr class="hr">
                            
                        <section>
                            <input type="checkbox" name="board" class="check" value="board0">
                            <div class="board-title">게시글 제목 7</div>
                            <div class="contents">
                                <textarea spellcheck="false">게시글 내용 7</textarea>
                                <button type="button" class="board-btn modify">수정</button>
                                <button type="button" class="board-btn delete">삭제</button>
                            </div>
                        </section>
                            
                        <hr class="hr">
                            
                        <section>
                            <input type="checkbox" name="board" class="check" value="board0">
                            <div class="board-title">게시글 제목 8</div>
                            <div class="contents">
                                <textarea spellcheck="false">게시글 내용 8</textarea>
                                <button type="button" class="board-btn modify">수정</button>
                                <button type="button" class="board-btn delete">삭제</button>
                            </div>
                        </section>
                            
                        <hr class="hr">
                            
                        <section>
                            <input type="checkbox" name="board" class="check" value="board0">
                            <div class="board-title">게시글 제목 9</div>
                            <div class="contents">
                                <textarea spellcheck="false">게시글 내용 9</textarea>
                                <button type="button" class="board-btn modify">수정</button>
                                <button type="button" class="board-btn delete">삭제</button>
                            </div>
                        </section>

                        <hr class="hr">

                        <section>
                            <input type="checkbox" name="board" class="check" value="board0">
                            <div class="board-title">게시글 제목 10</div>
                            <div class="contents">
                                <textarea spellcheck="false">게시글 내용 10</textarea>
                                <button type="button" class="board-btn modify">수정</button>
                                <button type="button" class="board-btn delete">삭제</button>
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

    <script src="${contextPath}/resources/js/myPage/myPage-board.js"></script>
</body>
</html>