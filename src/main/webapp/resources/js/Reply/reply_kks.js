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
                    const updateBtn = document.createElement("button");
                    updateBtn.classList.add("reply-btn");
                    updateBtn.innerHTML = "수정";
                    updateBtn.setAttribute("onclick", "showUpdateReply("+ reply.replyNo + ", this)");
    
                    // <button class="reply-btn">삭제</button>
                    const deleteBtn = document.createElement("button");
                    deleteBtn.classList.add("reply-btn");
                    deleteBtn.innerHTML = "삭제";
                    deleteBtn.setAttribute("onclick", "deleteReply("+ reply.replyNo+")");

                    btnDiv.append(updateBtn, deleteBtn);
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


// 댓글 삭제
function deleteReply(replyNo){

    if( confirm("정말로 삭제하시겠습니까?") ) {

        $.ajax({
            url : contextPath + "/travelReview/reply/delete",
            data : {"replyNo" : replyNo},
            type : "GET",
            success : function(result){

                if(result > 0){ 
                    alert("삭제 되었습니다.");
                    selectReplyList();
    
                } else{
                    alert("댓글 삭제에 실패했습니다..");
                }

            },
            error : function(req, status, error){
                console.log("댓글 삭제 오류");
                console.log(req.responseText);
            }
        })

    }

}

// 댓글 수정 화면 전환
let beforeReplyRow;

function showUpdateReply(replyNo, btn){

    // ** 댓글 수정이 한 개만 열릴 수 있도록 만들기 **
    const temp = document.getElementsByClassName("update-textarea");

    if(temp.length > 0){ //  수정이 한 개 이상 열려 있는 경우

        if(confirm("다른 댓글이 수정 중입니다. 현재 댓글을 수정 하시겠습니까?")){ // 확인

            temp[0].parentElement.innerHTML = beforeReplyRow;
            // reply-row                      // 백업한 댓글
            // 백업 내용으로 덮어 씌워 지면서 textarea 사라짐

        } else{ // 취소
           return;
        }

    }

    // 1. 댓글 수정이 클릭된 행을 선택
    const replyRow = btn.parentElement.parentElement; // 수정 버튼의 부모의 부모

    // 2. 행 내용 삭제 전 현재 상태를 저장(백업) (문자열)
    //  (전역변수 이용)
    beforeReplyRow = replyRow.innerHTML;

    // 취소 버튼 동작 코드
    //replyRow.innerHTML = beforeReplyRow;

    // 3. 댓글에 작성되어 있던 내용만 얻어오기 -> 새롭게 생성된 textarea 추가될 예정

    // console.log(replyRow.children[1].innerHTML); // <br> 태그 유지를 위해서 innerHTML 사용
    let beforeContent = replyRow.children[0].innerHTML;

    // 이것도 가능
    //let beforeContent = btn.parentElement.previousElementSibling.innerHTML;
    
    // 4. 댓글 행 내부 내용을 모두 삭제
    replyRow.innerHTML = "";
    
    // 5. textarea 요소 생성 + 클래스 추가 + **내용 추가**
    const textarea = document.createElement("textarea");
    textarea.classList.add("update-textarea");

    
    // *************************************************
    // XSS 방지 처리 해제
    beforeContent = beforeContent.replaceAll("&amp;", "&");
    beforeContent = beforeContent.replaceAll("&lt;", "<");
    beforeContent = beforeContent.replaceAll("&gt;", ">");
    beforeContent = beforeContent.replaceAll("&quot;", "\"");

    // 개행문자 처리 해제
    beforeContent = beforeContent.replaceAll("<br>", "\n");

    // *************************************************
    
    
    textarea.value = beforeContent; // 내용 추가

    // 6. replyRow에 생성된 textarea 추가
    replyRow.append(textarea);

    // 7. 버튼 영역 + 수정/취소 버튼 생성
    const replyBtnArea = document.createElement("div");
    replyBtnArea.classList.add("reply-btn-style");

    const updateBtn = document.createElement("button");
    updateBtn.innerText = "수정";
    updateBtn.classList.add("reply-btn");
    updateBtn.setAttribute("onclick", "updateReply(" +replyNo+ ", this)");

    const cancelBtn = document.createElement("button");
    cancelBtn.innerText = "취소";
    cancelBtn.classList.add("reply-btn");
    cancelBtn.setAttribute("onclick", "updateCancel(this)");

    // 8. 버튼영역에 버튼 추가 후
    //    replyRow(행)에 버튼영역 추가
    replyBtnArea.append(updateBtn, cancelBtn);
    replyRow.append(replyBtnArea);

}

// 댓글 수정 취소
function updateCancel(btn){
    // 매개변수 btn : 클릭된 취소 버튼
    // 전역변수 beforeReplyRow : 수정 전 원래 행(댓글)을 저장한 변수
    
    if(confirm("댓글 수정을 취소하시겠습니까?")){
        btn.parentElement.parentElement.innerHTML = beforeReplyRow;
    }

}

// 댓글 수정(AJAX)
function updateReply(replyNo, btn){

    // 새로 작성된 댓글 내용 얻어오기
    const replyContent = btn.parentElement.previousElementSibling.value;

    $.ajax({
        url : contextPath + "/travelReview/reply/update",
        data : {"replyNo" : replyNo,
                "replyContent" : replyContent},
        type : "POST",
        success : function(result){
            if(result > 0){
                alert("댓글이 수정되었습니다.");
                selectReplyList();

            }else{
                alert("댓글 수정 실패");
            }
        },
        error : function(req, status, error){
            console.log("댓글 수정 실패");
            console.log(req.responseText);
        }        

    });
}