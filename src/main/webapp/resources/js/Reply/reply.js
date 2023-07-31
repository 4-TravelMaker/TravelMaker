// 댓글 목록 조회(AJAX)
function selectReplyList(){

    $.ajax({

        url : contextPath + "/boardNotice/reply/selectReplyList",
        data : {"boardNo" : boardNo},
        type : "get",
        dataType : "JSON",
        success : function(rList){
            // 반환 받는 댓글 목록

            const replyList = document.getElementById("reply-list");
            replyList.innerHTML ="";

            // rList에 저장된 요소를 하나씩 접근
            for(let reply of rList){

                //행
                const replyRow = document.createElement("li");
                replyRow.classList.add("reply-row");

                // 작성자
                const replyWriter = document.createElement("p");
                replyWriter.classList.add("reply-writer");

                // 프로필 이미지
                const profileImage = document.createElement("img");

                // 프로필 이미지가 있는 경우
                if(reply.profileImage != null){

                    profileImage.setAttribute("src", contextPath + reply.profileImage);

                }else{ // 프로필 이미지가 없는 경우
                    profileImage.setAttribute("src", contextPath + "/resources/images/profile.png");
                }

                // 작성자 닉네임
                const memberNickname = document.createElement("span");
                memberNickname.innerText = reply.memberNickName;

                // 작성일
                const replyData =document.createElement("span");
                replyData.classList.add("reply-data");
                replyData.innerText = "(" + reply.createDate + ")";

                replyWriter.append(profileImage, memberNickname, replyData);


                const replyContent = document.createElement("p");
                replyContent.classList.add("reply-content");

                replyContent.innerHTML = reply.replyContent;

                replyRow.append(replyWriter, replyContent);

                if(loginMemberNo == reply.memberNo){

                    // 버튼 영역
                    const replyBtnArea = document.createElement("div");
                    replyBtnArea.classList.add("reply-btn-area");

                    // 수정 버튼
                    const updateBtn = document.createElement("button");
                    updateBtn.innerText = "수정";
                    // 수정 버튼에 onclick 이벤트 추가
                    updateBtn.setAttribute("onclick", "showUpdateReply(" + reply.replyNo + ", this)");
                    // 삭제 버튼
                    const deleteBtn = document.createElement("button");
                    deleteBtn.innerText = "삭제";
                    //삭제 버튼에 onclick 이벤트 추가
                    deleteBtn.setAttribute("onclick","deleteReply("+ reply.replyNo + ")");

                    replyBtnArea.append(updateBtn, deleteBtn);

                    replyRow.append(replyBtnArea);

                }

                replyList.append(replyRow);



            }

        },
        error : function(){
            console.log("에러 발생");
        }



    });
}

//---------------------------------------------------------

// 댓글 등록
const addReply = document.getElementById("addReply");
const replyContent = document.getElementById("replyContent");

addReply.addEventListener("click", function(){

    // 1) 로그인 확인
    if(loginMemberNo == ""){
        alert("로그인 후 이용해주세요. ^^");
        return;
    }

    //2) 댓글 내용 작성되었는지 확인
    if(replyContent.value.trim().length == 0 ){
        alert("댓글 작성 후 버튼을 클릭해주세요.");
        replyContent.focus();
        return;
    }

    // 3) AJAX를 이용해서 DB에 댓글 저장
    $.ajax({
        url : contextPath + "/boardNotice/reply/insert",
        data : {"replyContent" : replyContent.value,
                "memberNo" : loginMemberNo,
                "boardNo" : boardNo},
        type : "post",
        success : function(result){

            if(result > 0){

                alert("댓글이 등록되었습니다.")

                replyContent.value = "";

                selectReplyList();

            }else{
                alert("댓글 등록에 실패했습니다.")
            }

        },
        error : function(req, status, error){
            console.log("댓글 등록 실패");
            console.log(req.responseText);
        }

    });

})

//------------------------------------
// 댓글 삭제
function deleteReply(replyNo){
    
    if( confirm("정말로 삭제하시겠습니까?")){

        $.ajax({

            url : contextPath + "/boardNotice/reply/delete",
            data : {"replyNo" : replyNo},
            type : "GET",
            success : function(result){

                if(result > 0){
                    alert("삭제 되었습니다.");
                    selectReplyList();
                }else{
                    alert("댓글 삭제에 실패하셨습니다.");
                }

            },
            error : function(req, status, error){
                console.log("댓글 삭제 실패");
                console.lof(req.responseText);
            }

        });
    }
}


//_--------------------------------------------------------------------------------
// 댓글 수정 화면 전환
let beforeReplyRow;

function showUpdateReply(replyNo, btn){

    const temp = document.getElementsByClassName("update-textarea");

    if(temp.length > 0){

        if(confirm("다른 댓글이 수정 중입니다. 현재 닷글을 수정 하시겠습니까?")){

            temp[0].parentElement.innerHTML = beforeReplyRow;

        }else{
            return;
        }

    }

    // 댓글 수정이 눌린 행 선택
    const replyRow = btn.parentElement.parentElement

    // 행 내용 삭제 전 현재 내용 저장
    beforeReplyRow = replyRow.innerHTML;

    // 댓글에 작성되어있던 내용 얻어오기
    let beforeContent = replyRow.children[1].innerHTML;

    // 댓글 행 내부 내용 삭제
    replyRow.innerHTML = "";

    // textarea 요소 생성 + 클래스 추가 + 내용 추가
    const textarea = document.createElement("textarea");
    textarea.classList.add("update-textarea");

    // XSS 방지 처리 해제
    beforeContent = beforeContent.replaceAll("&amp;", "&");
    beforeContent = beforeContent.replaceAll("&lt;", "<");
    beforeContent = beforeContent.replaceAll("&gt;", ">");
    beforeContent = beforeContent.replaceAll("&quot;", "\"");

    // 개행문자 처리 해제
    beforeContent = beforeContent.replaceAll("<br>", "\n");


    textarea.value = beforeContent;

    // replyRow에 생성된 textarea 추가
    replyRow.append(textarea);

    // 버튼 영역, 수정/취소 버튼 생성
    const replyBtnArea = document.createElement("div");
    replyBtnArea.classList.add("reply-btn-area");

    const updateBtn = document.createElement("button");
    updateBtn.innerText = "수정";
    updateBtn.setAttribute("onclick", "updateReply(" +replyNo+ ", this)");

    const cancelBtn = document.createElement("button");
    cancelBtn.innerText = "취소";
    cancelBtn.setAttribute("onclick", "updateCancel(this)"); 

    replyBtnArea.append(updateBtn, cancelBtn);
    replyRow.append(replyBtnArea);
}

// ------------------------------------------------------------------
// 댓글 수정 취소
function updateCancel(btn){

    if(confirm("댓글 수정을 취소하시겠습니까?")){
        btn.parentElement.parentElement.innerHTML = beforeReplyRow;
    }
}

// __------------------------------------------------------------------
// 댓글 수정(AJAX)
function updateReply(replyNo, btn){

    const replyContent = btn.parentElement.previousElementSibling.value;

    $.ajax({
        url : contextPath + "/boardNotice/reply/update",
        data : {"replyNo" : replyNo,
                "replyContent" : replyContent},
        type : "POST",
        success : function(result){

            if(result > 0){
                alert("댓글이 수정되었습니다.")
                selectReplyList();
            }else{
                alert("댓글 수정 실패");
            }

        },
        error : function(req, status, error){
            console.log("댓글 수정 실팰");
            console.log(req.responseText);
        }
    });
}

selectReplyList();