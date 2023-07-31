<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div>
    <div class="reply-box1">
        <div>
            <i class="fa-regular fa-comment"></i>
        </div>
        <div class="reply-name">댓글 ${replyList.size()}</div>
    </div>

    <c:if test="${!empty replyList}">
        <div id="reply-area">
        <c:forEach var="reply" items="${replyList}">
            <div class="reply">
                <div class="reply-box2">
                    <!-- 프로필 이미지가 없을 경우 -->
                    <c:if test="${empty reply.profileImage}">
                        <img src="${contextPath}/resources/images/profile.png" class="profileImage">
                    </c:if>
                    
                    <!-- 프로필 이미지가 있을 경우 -->
                    <c:if test="${!empty reply.profileImage}">
                        <img src="${contextPath}${reply.profileImage}" class="profileImage">
                    </c:if>
                    <div>
                        <span class="reply-nickname">${reply.memberNickName}</span>
                    </div>
                </div>
                
                <div class="btn-box">
                    <span class="reply-content">${reply.replyContent}</span>

                    <c:if test="${reply.memberNo == loginMember.memberNo}">
                        <div>
                            <button class="reply-btn">수정</button>
                            <button class="reply-btn">삭제</button>
                        </div>
                    </c:if>
                </div>
                
                <!-- 수정 버튼 -->
                <!-- <div class="reply-write-area">
                    <textarea class="reply-textarea"></textarea>
                    <button class="reply-btn">수정</button>
                    <button class="reply-btn">삭제</button>
                </div> -->
            </div>
        </c:forEach>
        </div>
    </c:if>
    <c:if test="${!empty loginMember}">
        <div class="reply">
            <div class="reply-box2">
                <c:if test="${empty loginMember.profileImage}">
                    <img src="${contextPath}/resources/images/profile.png" class="profileImage">
                </c:if>
                
                <c:if test="${!empty loginMember.profileImage}">
                    <img src="${contextPath}${loginMember.profileImage}" class="profileImage">
                </c:if>
                <div>
                    <span class="reply-nickname">${loginMember.memberNickname}</span>
                </div>
                <textarea class="reply-textarea" id="replyContent"></textarea>
                <button class="reply-btn" id="addReply">작성</button>
            </div>
        </div>
    </c:if>
    <c:if test="${empty replyList}"></c:if>
</div>