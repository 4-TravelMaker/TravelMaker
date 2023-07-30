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
                        <span class="reply-dara"> ${reply.createDate}</span>
                        
                    </p>
    
                    <p class="reply-content">${reply.replyContent}</p>
    


                    <!-- 로그인 되어야 수정 삭제 버튼 보임 -->
                    <c:if test="${loginMember.memberNo == reply.memberNo}">

                        <div class="reply-btn-area">
                            <button>수정</button>
                            <button>삭제</button>
                        </div>

                    </c:if>
    
                </li>

            </c:forEach>


        </ul>

    </div>

    <!-- 댓글 작성 부분 -->

    <div class="reply-writer-area">
        <textarea id="replyContent"></textarea>
        <button id="addReply">등록</button>
    </div>

</div>