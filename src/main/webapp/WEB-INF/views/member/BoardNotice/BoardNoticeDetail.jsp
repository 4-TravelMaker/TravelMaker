<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"  %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TravelMaker</title>
    <link rel="shortcut icon" type="image/x-icon" href="image/small_logo.png">
    <link rel="stylesheet" href="${contextPath}/resources/css/BoardNotice/BoardNoticeDetail.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/BoardNotice/reply.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/ef988defcf.js" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/aa566476b0.js" crossorigin="anonymous"></script>
    
</head>
<body>
    <main>
        <jsp:include page="/WEB-INF/views/common/header.jsp"/>

        <section id="middle">
        
            <div class="container">
                <h2>공지사항</h2>
            </div>
            
            <div>
                <div>
                    <div class="container">
                        <div class="title-area">
                            <h3>${detail.boardTitle}</h3>
                            <div>
                                <p><span>작성일</span> ${detail.createDate}</p>
                                <p><span>작성자</span> ${detail.memberNickname}</p>
                            </div>
                        </div>
                    </div>
                </div>

                <div style="border-top: 2px solid lightgray;">
                    <div class="container">
                        <div id="content-area">

                            <!-- 이미지가 있을 경우 -->
                            <c:if test="${!empty detail.imageList}">

                                <!-- 썸네일이 있을 경우 변수 생성 -->
                                <c:if test="${detail.imageList[0].imageLevel == 0}">
                                    <c:set var="thumnail" value="${detail.imageList[0]}" />
                                </c:if>

                            </c:if>

                            <!-- 썸네일 영역(썸네일이 있을 경우) -->
                            <c:if test="${!empty thumnail}">

                                <div class="img-box">
                                    <div class="boardImg thumnail">
                                        <img src="${contextPath}${thumnail.imageReName}">
                                    </div>
                                </div>

                            </c:if>

                            <c:if test="${empty thumnail}">
                                <c:set var="start" value="0"/>
                            </c:if>

                            <c:if test="${!empty thumnail}">
                                <c:set var="start" value="1"/>
                            </c:if>


                            <!-- 업로드 이미지가 있는 경우 -->
                            <c:if test="${fn:length(detail.imageList) > start}">

                                <!-- 업로드 이미지 영역 -->
                                <div class="img-box">

                                    <c:forEach var="i" begin="${start}" end="${fn:length(detail.imageList) -1}">
                                        <div class="boardImg">
                                            <img src="${contextPath}${detail.imageList[i].imageReName}">
                                        </div>
                                    </c:forEach>
                                </div>


                            </c:if>
    
                            <!-- 게시판 내용 영역 -->
                            <div class="board-content">${detail.boardContent}</div>

                            <div class="board-btn-area">

                                <c:if test="${loginMember.memberNo == detail.memberNo}">
                                    
                                    <c:if test="${empty param.cp}">
                                        <c:set var="cp" value="1"/>
                                    </c:if>

                                    <c:if test="${!empty param.cp}">
                                        <c:set var="cp" value="${param.cp}"/>
                                    </c:if>

                                    <button id="updateBtn" onclick="location.href='write?mode=update&type=${param.type}&cp=${cp}&no=${detail.boardNo}'">수정</button>
                                    <button id="deleteBtn" onclick>삭제</button>

                                </c:if>
                                <button id="goToListBtn">목록으로</button>
                            </div>


                        </div>    
                    </div>
                </div>

                
            </div>
            
            
        </section>
        <!-- 댓글 -->
        <jsp:include page="/WEB-INF/views/member/BoardNotice/reply.jsp"/>

        <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
    </main>

    <!-- jQuery 추가 -->
    <script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>

    <script src="${contextPath}/resources/js/Reply/board.js"></script>

    <script>
        // 댓글 관련 JS 코드에 필요한 값을 전역 변수로 선언

        // jsp 파일 : html, css, js, el, jstl 사용 가능
        // js 파일  : js

        // 코드 해석 순서 : EL == JSTL > HTML > JS

        // ** JS 코드에서 EL/JSTL을 작성하게 된다면 반드시 ""를 양쪽에 추가 **

        // 최상위 주소
        const contextPath = "${contextPath}";

        // 게시글 번호
        const boardNo = "${detail.boardNo}"; // "500"

        // 로그인한 회원 번호
        const loginMemberNo = "${loginMember.memberNo}";
        // -> 로그인 O : "10";
        // -> 로그인 X : ""; (빈문자열)

        
        
        </script>

<script src="${contextPath}/resources/js/Reply/reply.js"></script>





    
</body>
</html>