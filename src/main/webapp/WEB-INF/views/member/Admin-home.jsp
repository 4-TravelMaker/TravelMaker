<!-- 관리자 화면 - 홈 화면 관리 -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- 문자열 관련 함수(메소드) 제공 JSTL (EL 형식으로 작성) --%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

    <link rel="stylesheet" href="${contextPath}/resources/css/main-style.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/Admin-home-style.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/Admin-sideBar-main-style.css">

		<jsp:include page="/WEB-INF/views/common/header.jsp"/>

		<jsp:include page="/WEB-INF/views/common/admin-sideBar.jsp"/>

            <section class="right-section">

                <!-- 관리자 페이지 상단 우측 제목 -->
                <section>
                    <section class="title">
                        <i class="fa-solid fa-house" style="color: #000000;"></i>
                        &nbsp;홈 화면 관리
                    </section>

                    <section class="right-section-btn">
                        <a href="#">
                            <button>저장</button>
                        </a>
                    </section>

                    <section class="right-section-btn" id="btn-margin">
                        <a href="#">
                            <button>취소</button>
                        </a>
                    </section>
                </section>

                <!-- 홈 화면 관리 내용 -->
                <section class="home-pic-area">
                    <section>
                        <section>
                            <i class="fa-solid fa-1" style="color: #000000;"></i>
                        </section>
                        <section>
                            <section class="home-pic">
                                <img id="home-pic-preview1">
                            </section>
                            <section>
                                <input class="file-input" type="file" onchange="readURL1(this);" accept=".png, .jpg, .jpeg"></input>
                            </section>
                        </section>
                        <section>
                            <form>
                                <input class="link-input" type="url" placeholder="링크 입력">
                                <button type="submit">등록</button>
                            </form>
                        </section>
                    </section>

                    <section>
                        <section>
                            <i class="fa-solid fa-2" style="color: #000000;"></i>
                        </section>
                        <section>
                            <section class="home-pic">
                                <img id="home-pic-preview2">
                            </section>
                            <section>
                                <input class="file-input" type="file" onchange="readURL2(this);" accept=".png, .jpg, .jpeg"></input>
                            </section>
                        </section>
                        <section>
                            <form>
                                <input class="link-input" type="url" placeholder="링크 입력">
                                <button type="submit">등록</button>
                            </form>
                        </section>
                    </section>

                    <section>
                        <section>
                            <i class="fa-solid fa-3" style="color: #000000;"></i>
                        </section>
                        <section>
                            <section class="home-pic">
                                <img id="home-pic-preview3">
                            </section>
                            <section>
                                <input class="file-input" type="file" onchange="readURL3(this);" accept=".png, .jpg, .jpeg"></input>
                            </section>
                        </section>
                        <section>
                            <form>
                                <input class="link-input" type="url" placeholder="링크 입력">
                                <button type="submit">등록</button>
                            </form>
                        </section>
                    </section>
                    
                    <section>
                        <section>
                            <i class="fa-solid fa-4" style="color: #000000;"></i>
                        </section>
                        <section>
                            <section class="home-pic">
                                <img id="home-pic-preview4">
                            </section>
                            <section>
                                <input class="file-input" type="file" onchange="readURL4(this);" accept=".png, .jpg, .jpeg"></input>
                            </section>
                        </section>
                        <section>
                            <form>
                                <input class="link-input" type="url" placeholder="링크 입력">
                                <button type="submit">등록</button>
                            </form>
                        </section>
                    </section>

                </section>
                
                <!-- 이달의 베스트 여행지 Top10 -->
                <section class="title2-area">
                    <section class="title2">
                        이달의 베스트 여행지 Top10
                    </section>
                </section>

                <section class="home-pic-area">

                    <section>
                        <section>
                            <i class="fa-solid fa-1" style="color: #000000;"></i>
                        </section>
                        <section>
                            <section class="home-pic">
                                <img id="best-place-preview1">
                            </section>
                            <section>
                                <input class="file-input" type="file" onchange="readURL5(this);" accept=".png, .jpg, .jpeg"></input>
                            </section>
                        </section>
                        <section>
                            <form>
                                <input class="link-input" type="url" placeholder="링크 입력">
                                <button type="submit">등록</button>
                            </form>
                        </section>
                    </section>

                    <section>
                        <section>
                            <i class="fa-solid fa-2" style="color: #000000;"></i>
                        </section>
                        <section>
                            <section class="home-pic">
                                <img id="best-place-preview2">
                            </section>
                            <section>
                                <input class="file-input" type="file" onchange="readURL6(this);" accept=".png, .jpg, .jpeg"></input>
                            </section>
                        </section>
                        <section>
                            <form>
                                <input class="link-input" type="url" placeholder="링크 입력">
                                <button type="submit">등록</button>
                            </form>
                        </section>
                    </section>

                    <section>
                        <section>
                            <i class="fa-solid fa-3" style="color: #000000;"></i>
                        </section>
                        <section>
                            <section class="home-pic">
                                <img id="best-place-preview3">
                            </section>
                            <section>
                                <input class="file-input" type="file" onchange="readURL7(this);" accept=".png, .jpg, .jpeg"></input>
                            </section>
                        </section>
                        <section>
                            <form>
                                <input class="link-input" type="url" placeholder="링크 입력">
                                <button type="submit">등록</button>
                            </form>
                        </section>
                    </section>
                    
                    <section>
                        <section>
                            <i class="fa-solid fa-4" style="color: #000000;"></i>
                        </section>
                        <section>
                            <section class="home-pic">
                                <img id="best-place-preview4">
                            </section>
                            <section>
                                <input class="file-input" type="file" onchange="readURL8(this);" accept=".png, .jpg, .jpeg"></input>
                            </section>
                        </section>
                        <section>
                            <form>
                                <input class="link-input" type="url" placeholder="링크 입력">
                                <button type="submit">등록</button>
                            </form>
                        </section>
                    </section>

                </section>
                
                <!-- 테마 -->
                <section class="title2-area">
                    <section class="title2">
                        테마
                    </section>
                </section>
            
                <section class="home-pic-area">
                    <section>
                        <section>
                            <i class="fa-solid fa-1" style="color: #000000;"></i>
                        </section>
                        <section>
                            <section class="home-pic">
                                <img id="theme-preview1">
                            </section>
                            <section>
                                <input class="file-input" type="file" onchange="readURL9(this);" accept=".png, .jpg, .jpeg"></input>
                            </section>
                        </section>
                        <section>
                            <form>
                                <input class="link-input" type="url" placeholder="링크 입력">
                                <button type="submit">등록</button>
                            </form>
                        </section>
                    </section>

                    <section>
                        <section>
                            <i class="fa-solid fa-2" style="color: #000000;"></i>
                        </section>
                        <section>
                            <section class="home-pic">
                                <img id="theme-preview2">
                            </section>
                            <section>
                                <input class="file-input" type="file" onchange="readURL10(this);" accept=".png, .jpg, .jpeg"></input>
                            </section>
                        </section>
                        <section>
                            <form>
                                <input class="link-input" type="url" placeholder="링크 입력">
                                <button type="submit">등록</button>
                            </form>
                        </section>
                    </section>

                    <section>
                        <section>
                            <i class="fa-solid fa-3" style="color: #000000;"></i>
                        </section>
                        <section>
                            <section class="home-pic">
                                <img id="theme-preview3">
                            </section>
                            <section>
                                <input class="file-input" type="file" onchange="readURL11(this);" accept=".png, .jpg, .jpeg"></input>
                            </section>
                        </section>
                        <section>
                            <form>
                                <input class="link-input" type="url" placeholder="링크 입력">
                                <button type="submit">등록</button>
                            </form>
                        </section>
                    </section>
                    
                    <section>
                        <section>
                            <i class="fa-solid fa-4" style="color: #000000;"></i>
                        </section>
                        <section>
                            <section class="home-pic">
                                <img id="theme-preview4">
                            </section>
                            <section>
                                <input class="file-input" type="file" onchange="readURL12(this);" accept=".png, .jpg, .jpeg"></input>
                            </section>
                        </section>
                        <section class="form-area">
                            <form>
                                <input class="link-input" type="url" placeholder="링크 입력">
                                <button type="submit">등록</button>
                            </form>
                        </section>
                    </section>

                </section>

            </section>
            
        </section>

    </main>

	<jsp:include page="/WEB-INF/views/common/footer.jsp"/>

    <script src="${contextPath}/resources/js/Admin/Admin-home.js"></script>
</body>
</html>