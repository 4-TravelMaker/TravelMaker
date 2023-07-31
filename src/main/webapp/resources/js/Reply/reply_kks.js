// 댓글 목록 조회
function selectReplyList() {

    $.ajax({

        url : contextPath + "/travelReview/reply/selectReplyList",
        data : {"boardNo" : boardNo},
        type : "POST",
        dataType : "JSON",
        success : function(replyList) {

            const replyArea = document.getElementById("reply-area");

            replyArea.innerHTML = "";

            for(let reply of replyList) {

                // <div id=reply></div>
                const replyId = document.createElement("div");
                replyId.classList.add("reply");

                // <div class="reply-box2"></div>
                const replyBox2 = document.createElement("div");
                replyBox2.classList.add("reply-box2");
    
                // <img>
                const profileImage = document.createElement("img");
                
                // <img src=>
                if(reply.profileImage != null) { // 프로필 이미지가 있을 경우
                    profileImage.setAttribute("src", contextPath + reply.profileImage);
                    profileImage.classList.add("profileImage");

                } else { // 없을 경우
                    profileImage.setAttribute("src", contextPath + "/resources/images/profile.png");
                    profileImage.classList.add("profileImage");
                }

                // <div></div>
                const nicknameDiv = document.createElement("div");

                // <span class="reply-nickname">${reply.memberNickName}</span>
                const replyNickname = document.createElement("span");
                replyNickname.classList.add("reply-nickname");
                replyNickname.innerHTML = reply.memberNickName;

                nicknameDiv.append(replyNickname);

                replyBox2.append(profileImage, nicknameDiv);

                // <div class="btn-box">
                const btnBoxDiv = document.createElement("div");
                btnBoxDiv.classList.add("btn-box");

                // <span class="reply-content">${reply.replyContent}</span>
                const replyContent = document.createElement("span");
                replyContent.classList.add("reply-content");
                replyContent.innerHTML = reply.replyContent;
                
                btnBoxDiv.append(replyContent);

                if(loginMemberNo == reply.memberNo) {

                    const btnDiv = document.createElement("div");
    
                    // <button class="reply-btn">수정</button>
                    const modifyBtn = document.createElement("button");
                    modifyBtn.classList.add("reply-btn");
                    modifyBtn.innerHTML = "수정";
    
                    // <button class="reply-btn">삭제</button>
                    const deleteBtn = document.createElement("button");
                    deleteBtn.classList.add("reply-btn");
                    deleteBtn.innerHTML = "삭제";

                    btnDiv.append(modifyBtn, deleteBtn);
                    btnBoxDiv.append(btnDiv);
                }

                replyId.append(replyBox2, btnBoxDiv);
                replyArea.append(replyId);
            }
        },
        error : function(req, status, error){
            console.log(req.responseText);
        }
    })
}


// 게시글 좋아요 수 조회
function selectLikeList() {

    $.ajax({

        url : "selectLike",
        data : {"boardNo" : boardNo},
        type : "POST",
        success : function(likeCount) {

            const likeCountBox = document.getElementById("likeCountBox");

            likeCountBox.innerText = likeCount;
        },
        error : function(req, status, error){
            console.log(req.responseText);
        }
    });

}


// 좋아요 버튼 클릭 이벤트
const likeBtn = document.getElementById("like-btn");
const likeBtnBox = document.getElementById("like-btn-box");

likeBtn.addEventListener("click", function(){

    if(loginMemberNo == "") {
        alert("로그인 후 클릭 해주세요.");
        return;
    }

    if(likeBtn.classList.contains("full")) { // 좋아요 취소
        
        $.ajax({

            url : "minusLike",
            data : {"memberNo" : loginMemberNo,
                    "boardNo" : boardNo},
            type : "POST",
            success : function(result) {
                if(result > 0) {
                    selectLikeList();
                    
                    likeBtn.src = contextPath + "/resources/images/Review/heart-empty.png";
                    likeBtn.classList.remove("full");
                    likeBtn.classList.add("empty");

                } else {
                    alert("좋아요 취소 오류 발생");
                }
            },
            error : function(req, status, error){
                console.log(req.responseText);
            }
        });
        
        
    }

    if(likeBtn.classList.contains("empty")) { // 좋아요 클릭

        $.ajax({

            url : "plusLike",
            data : {"memberNo" : loginMemberNo,
                    "boardNo" : boardNo},
            type : "POST",
            success : function(result) {
                if(result > 0) {
                    selectLikeList();
                    
                    likeBtn.src = contextPath + "/resources/images/Review/heart-full.png";
                    likeBtn.classList.remove("empty");
                    likeBtn.classList.add("full");
                } else {
                    alert("좋아요 클릭 오류 발생");
                }
            },
            error : function(req, status, error){
                console.log(req.responseText);
            }
        });

        

    }
})

// 댓글 등록
const addReply = document.getElementById("addReply");
const replyContent = document.getElementById("replyContent");

addReply.addEventListener("click", function(){

    if(loginMemberNo == ""){
        alert("로그인 후 이용해주세요.");
        return;
    }

    if(replyContent.value.trim().length == 0){
        alert("댓글을 작성한 후 버튼을 클릭해주세요");

        replyContent.value = "";
        replyContent.focus();
        return;
    }

    $.ajax({
        url : contextPath + "/travelReview/reply/insert",
        data : {"replyContent" : replyContent.value,
                "memberNo" : loginMemberNo,
                "boardNo" : boardNo},
        type : "post",
        success : function(result){

            if(result > 0){
                alert("댓글이 등록되었습니다.");

                replyContent.value = "";

                selectReplyList();

            } else{
                alert("댓글 등록에 실패했습니다..");
            }
        },
        error : function(req, status, error){
            console.log("댓글 등록 실패");
            console.log(req.responseText);
        }

    });

})
