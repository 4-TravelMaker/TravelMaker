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
                            <div class="board-content">
                                부산은 지금 나 홀로 떠나는 혼행지로 주목받는다.
                                <br>
                                눈부시게 푸른바다....
                            </div>

                            <div class="board-btn-area">
                                <button id="updateBtn">수정</button>
                                <button id="deleteBtn">삭제</button>
                                <button id="goToListBtn">목록으로</button>
                            </div>


                        </div>    
                    </div>
                </div>

                
            </div>

            
            <div>
                <div class="comments">
                    <div>
                        <i class="fa-regular fa-comment"></i>
                    </div>
                    <div class="cmt">댓글</div>
                    <div class="cmt-1">200</div>
                </div>

                <div>
                    <div id="Writer-1">
                        <div>
                            <img src="/image/profile.png" width="40px" height="40px">
                        </div>
                        <div id="Writer-text">
                            작성자
                        </div>

                        <div>
                            <fieldset id="fieldset">
                                <input type="text" placeholder="칭찬과 격려의 댓글은 작성자에게 큰 힘이 됩니다." id="text">
                                <button type="button" id="text-btn">입력</button>
                            </fieldset>
                        </div>
                    </div>

                </div>

                <div id="Writer-2">
                    <div class="comments-text">
                        <div>
                            <img src="/image/profile.png" width="40px" height="40px">
                        </div>
                        <div id="Writer-text">
                            김광팔
                        </div>
                    </div>
                    <div id="comments-text2">
                        안녕하세요~ 선생님의 귀한 리뷰 잘 봤읍니다..
                    </div>
                </div>
                
                <div id="Writer-2">
                    <div class="comments-text">
                        <div>
                            <img src="/image/profile.png" width="40px" height="40px">
                        </div>
                        <div id="Writer-text">
                            광파링
                        </div>
                    </div>
                    <div id="comments-text2">
                        ^___^
                    </div>
                </div>
            </div>



            
            

        </section>

        <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
    </main>
    
</body>
</html>