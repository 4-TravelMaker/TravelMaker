<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div>
    <div class="comments">
        <div>
            <i class="fa-regular fa-comment"></i>
        </div>
        <div class="cmt">댓글</div>
        <div class="cmt-1">200</div>
    </div>

    <div>

        <!-- 프로필 이미지가 없는 경우 -->
        <c:if test="${empty loginMember}">
            <div class="Writer-1">

                <div>

                    <img src="${contextPath}/resources/images/Review/profile.png">
                    
                    <c:if test="${!empty reply.profileImage}">
                        <img src="${contextPath}${reply.profileImage}">
                    </c:if>
                    
                    <span id="Writer-text"></span>
                </div>
                
                <p id="Writer-text"></p>
                
                <div class="reply-write-area">
                    <textarea id="replyContent"></textarea>
                    <button id="addReply">입력</button>
                </div>
                
            </div>
        </c:if>

    </div>

    <div id="Writer-2">
        <div class="comments-text">
            <div>
                <img src="${contextPath}/resources/images/Review/profile.png" width="40px" height="40px">
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
                <img src="${contextPath}/resources/images/Review/profile.png" width="40px" height="40px">
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