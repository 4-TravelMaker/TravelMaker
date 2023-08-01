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
    <link rel="stylesheet" href="${contextPath}/resources/css/BoardNotice/BoardNoticeWriteForm.css">
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

        <form action="write" enctype="multipart/form-data" method="POST" class="board-write"
            onsubmit="return writeValidate()">

            <!-- 제목 -->
            <h1 class="board-title">
                <input type="text" name="boardTitle" placeholder="제목을 입력해주세요." value="${detail.boardTitle}">
            </h1>

            <%-- imageList에 존재하는 이미지 레벨을 이용하여 변수 생성 --%>
            <c:forEach items="${detail.imageList}" var="boardImage">

                <c:choose>

                    <c:when test="${boardImage.imageLevel == 0}">
                        <c:set var="img0" value="${contextPath}${boardImage.imageReName}"/>
                    </c:when>

                    <c:when test="${boardImage.imageLevel == 1}">
                        <c:set var="img1" value="${contextPath}${boardImage.imageReName}"/>
                    </c:when>

                    <c:when test="${boardImage.imageLevel == 2}">
                        <c:set var="img2" value="${contextPath}${boardImage.imageReName}"/>
                    </c:when>

                    <c:when test="${boardImage.imageLevel == 3}">
                        <c:set var="img3" value="${contextPath}${boardImage.imageReName}"/>
                    </c:when>

                    <c:when test="${boardImage.imageLevel == 4}">
                        <c:set var="img4" value="${contextPath}${boardImage.imageReName}"/>
                    </c:when>

                </c:choose>

            </c:forEach>

            <!-- 썸네일 -->
            <h5>썸네일</h5>
            <div class="img-box">
                <div class="boardImg thumanail">
                    <label for="img0">
                        <img class="preview" src="${img0}">
                    </label>
                    <input type="file" class="inputImage" id="img0" name="0" accept="image/*">
                    <span class="delete-image">&times;</span>
                    <!-- &times; : x 모양의 문자 -->
                </div>
            </div>

            <!-- 업로드 이미지 -->
            <h5>업로드 이미지</h5>
            <div class="img-box">

                <div class="boardImg">
                    <label for="img1">
                        <img class="preview" src="${img1}">
                    </label>
                    <input type="file" class="inputImage" id="img1" name="1" accept="image/*">
                    <span class="delete-image">&times;</span>
                </div>

                <div class="boardImg">
                    <label for="img2">
                        <img class="preview" src="${img2}">
                    </label>
                    <input type="file" class="inputImage" id="img2" name="2" accept="image/*">
                    <span class="delete-image">&times;</span>
                </div>

                <div class="boardImg">
                    <label for="img3">
                        <img class="preview" src="${img3}">
                    </label>
                    <input type="file" class="inputImage" id="img3" name="3" accept="image/*">
                    <span class="delete-image">&times;</span>
                </div>

                <div class="boardImg">
                    <label for="img4">
                        <img class="preview" src="${img4}">
                    </label>
                    <input type="file" class="inputImage" id="img4" name="4" accept="image/*">
                    <span class="delete-image">&times;</span>
                </div>

            </div>

            <!-- 내용 -->
            <div class="board-content">
                <textarea name="boardContent">${detail.boardContent}</textarea>
            </div>

            <!-- 버튼 영역 -->
            <div class="board-btn-area">
                <button type="submit" id="writeBtn">등록</button>

                <!-- insert 모드 -->
                <c:if test="${param.mode == 'insert'}">
                    <button type="button" id="goToListBtn">목록으로</button>
                </c:if>

                <!-- update 모드 -->
                <c:if test="${param.mode == 'update'}">
                    <button type="button" onclick="location.href='${header.referer}'">이전으로</button>
                </c:if>
            </div>

            <!-- 숨겨진 값(hidden) -->
            <!-- 동작 구분 -->
            <input type="hidden" name="mode" value="${param.mode}">

            <!-- 게시판 구분 -->
            <input type="hidden" name="type" value="${param.type}">

            <!-- 게시글 번호 -->
            <input type="hidden" name="no" value="${param.no}">

            <!-- 현재 페이지 -->
            <input type="hidden" name="cp" value="${param.cp}">

            <!-- 존재하던 이미지가 제거되었음을 기록하는 input -->
            <input type="hidden" name="deleteList" id="deleteList" value="">
        </form>




        

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

<script src="${contextPath}/resources/js/boardNotice/boardWriteForm.js"></script>





    
</body>
</html>