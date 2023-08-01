<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TravelMaker</title>
    <link rel="shortcut icon" type="image/x-icon" href="image/small_logo.png">
    <link rel="stylesheet" href="${contextPath}/resources/css/Review/writeForm.css">
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
            <h2 class="type">여행 리뷰 게시판</h2>

            <form action="write" enctype="multipart/form-data" method="POST" class="board-write"
                  onsubmit="return writeValidate()">
                <div id="text-title-div">
                    <input type="text" id="text-title" placeholder="제목을 입력해주세요.">
                </div>

                <%-- imageList에 존재하는 이미지 레벨을 이용하여 변수 생성 --%>
                <c:forEach items="${detail.imageList}" var="boardImage">

                    <c:choose>

                        <c:when test="${boardImage.imageLevel == 0}">
                            <%-- c:set 변수는 page scope가 기본값 (조건문이 끝나도 사용 가능) --%>
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

                <div class="img-box">
                    <div class="boardImg">
                        <label for="img0">썸네일
                            <img class="preview" src="${img0}">
                        </label>
                        <input type="file" class="inputImage" id="img0" name="0" accept="image/*">
                        <span class="delete-image">&times;</span>
                    </div>

                    <div class="boardImg">
                        <label for="img0">이미지1
                            <img class="preview" src="${img1}">
                        </label>
                        <input type="file" class="inputImage" id="img0" name="0" accept="image/*">
                        <span class="delete-image">&times;</span>
                    </div>

                    <div class="boardImg">
                        <label for="img0">이미지2
                            <img class="preview" src="${img2}">
                        </label>
                        <input type="file" class="inputImage" id="img0" name="0" accept="image/*">
                        <span class="delete-image">&times;</span>
                    </div>

                    <div class="boardImg">
                        <label for="img0">이미지3
                            <img class="preview" src="${img3}">
                        </label>
                        <input type="file" class="inputImage" id="img0" name="0" accept="image/*">
                        <span class="delete-image">&times;</span>
                    </div>
                </div>

                <div class="board-content">
                    <textarea name="boardContent" id="boardContent"></textarea>
                </div>
                <span id="counter">0</span>/1000

                <div class="btn-last">
                    <button class="btn">작성</button>
                    <button class="btn">취소</button>
                </div>

            <input type="hidden" name="mode" value="${param.mode}">

            <input type="hidden" name="type" value="${param.type}">

            <input type="hidden" name="no" value="${param.no}">

            <input type="hidden" name="cp" value="${param.cp}">

            <input type="hidden" name="deleteList" id="deleteList" value="">

            </form>
        </section>

        <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
    </main>
    
    <script src="${contextPath}/resources/js/review/writeForm.js"></script>
</body>
</html>