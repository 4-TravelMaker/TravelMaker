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

                            <!-- 게시판 이미지 영역 -->
                            <div class="img-box">

                                <div class="boardImg">
                                    <img src="/image/logo.png">
                                </div>

                                <div class="boardImg">
                                    <img src="/image/logo.png">
                                </div>

                                <div class="boardImg">
                                    <img src="/image/logo.png">
                                </div>

                            </div>
    
                            <!-- 게시판 내용 영역 -->
                            <div class="board-content">${detail.boardContent}</div>

                            <div class="board-btn-area">
                                <button id="updateBtn">수정</button>
                                <button id="deleteBtn">삭제</button>
                                <button id="goToListBtn">목록으로</button>
                            </div>


                        </div>    
                    </div>
                </div>

                
            </div>

            
            <jsp:include page="/WEB-INF/views/member/BoardNotice/reply.jsp"/>



            
            

        </section>

        <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
    </main>
    
</body>
</html>