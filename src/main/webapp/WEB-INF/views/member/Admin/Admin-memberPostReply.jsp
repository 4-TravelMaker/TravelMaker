<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div id="reply-area">
    <!-- 댓글 목록 -->
    <div class="reply-list-area">

        <ul id="reply-list">

            <c:forEach var="reply" items="${rList}">

                <li class="reply-row">
                    <p class="reply-writer">
    
                        <!-- 프로필 이미지가 없을 경우 -->
                        <c:if test="${empty reply.profileImage}">
                            <img src="${contextPath}/resources/images/profile.png">
                        </c:if>

                        <!-- 프로필 이미지가 있을 경우 -->
                        <c:if test="${!empty reply.profileImage}">
                            <img src="${contextPath}${reply.profileImage}">
                        </c:if>
    
                        <span>${reply.memberNickName}</span>
                        <span class="reply-data"> ${reply.createDate}</span>
                        
                    </p>
    
                    <p class="reply-content">${reply.replyContent}</p>
    
                    <div class="reply-btn-area">
                        <button onclick="deleteReply(${reply.replyNo})">삭제</button>
                    </div>

    
                </li>

            </c:forEach>


        </ul>

    </div>

    

    

</div>