// 답변하기 버튼 눌렀을 때 답변 작성 영역 활성화
const replyBtn = document.getElementById("reply-btn");
const adminReply = document.getElementsByClassName("admin-reply")[0];

replyBtn.addEventListener("click", function(){

    adminReply.style.display = "block";

})

// 답변 취소
const cancelBtn = document.getElementById("cancel-btn");

cancelBtn.addEventListener("click", function(){ // 작성 버튼이 클릭되었을 때

    adminReply.style.display = "none";

})

// 답변 등록
const replyContent = document.getElementById("inquiry-content");
const insertBtn = document.getElementById("insert-btn");

insertBtn.addEventListener("click", function(){ // 작성 버튼이 클릭되었을 때

    if(replyContent.value.trim().length == 0){
        alert("내용을 작성한 뒤 버튼을 클릭해 주세요.");

        replyContent.value = "";
        replyContent.focus();
        return;
    }
    
    $.ajax({
        url : "insert",

        data : {"replyContent" : replyContent.value,
                "memberNo" : loginMemberNo,
                "boardNo" : boardNo},

        type : "POST",

        success : function(result){

            if(result > 0){
                alert("답변이 작성되었습니다.");

                replyContent.value = "";
                selectReplyList();

            } else{
                alert("답변 등록에 실패했습니다.");
            }
        },

        error : function(req, status, error){
            console.log("답변 등록 실패");
            console.log(req.responseText);
        }
    });
})

// 답변 목록 조회
function selectReplyList(){
    
    $.ajax({
        url : contextPath + "/admin/OneOnOneInquiry/selectReplyList",
        data : {"boardNo" : boardNo},
        type : "get",
        dataType : "JSON",

        success : function(rList){
            const customerInquiry = document.getElementById("customer-inquiry");
            customerInquiry.innerHTML = "";
            
            for(let reply of rList){
                const section1 = document.createElement("section");
                section1.innerText = "Re: " + boardTitle;
                section1.classList.add("section1");

                const section2 = document.createElement("section");
                section2.innerText = "작성자 닉네임 : " + reply.memberNickName + " | 작성일 : " + reply.createDate;
                section2.classList.add("section2");

                const section3 = document.createElement("section");
                section3.innerHTML = reply.replyContent;
                section3.classList.add("section3");
                section3.classList.add("update-text-area");
                
                customerInquiry.append(section1, section2, section3);

                if(loginMemberNickName == reply.memberNickName){
                    const replyBtnArea = document.createElement("div");
                    replyBtnArea.classList.add("reply-btn-area");

                    const updateBtn = document.createElement("button");
                    updateBtn.innerText = "수정";
                    updateBtn.classList.add("post-btn");
                    updateBtn.setAttribute("onclick", "showUpdateReply("+ reply.replyNo + ", this)");

                    const deleteBtn = document.createElement("button");
                    deleteBtn.innerText = "삭제";
                    deleteBtn.classList.add("post-btn");
                    deleteBtn.setAttribute("onclick", "deleteReply("+ reply.replyNo + ")");

                    replyBtnArea.append(updateBtn, deleteBtn);
                    customerInquiry.append(replyBtnArea);
                }
            }
        },

        error : function(req, status, error){
            console.log("에러 발생");
            console.log(req.responseText);
        }
    })
}

// 답변 삭제
function deleteReply(replyNo){

    if(confirm("정말 삭제하시겠습니까?")){

        $.ajax({
            url : contextPath + "/admin/OneOnOneInquiry/delete",
            data : {"replyNo" : replyNo},
            type : "get",

            success : function(result){

                if(result > 0){
                    alert("삭제되었습니다.");
                    selectReplyList();

                } else{
                    alert("댓글 삭제에 실패했습니다.");
                }

            },

            error : function(req, status, error){
                console.log("댓글 삭제 실패")
                console.log(req.responseText);
            }
        });
    }
}

let beforeContent;

// 답변 수정 textArea 활성화
function showUpdateReply(replyNo, btn){

    // 기존 댓글 내용 변수에 저장
    const updateTextArea = btn.parentElement.previousElementSibling;
    beforeContent = updateTextArea.innerHTML;
    updateTextArea.innerHTML = "";

    // 댓글 수정 textarea 생성
    const textArea = document.createElement("textarea");
    textArea.classList.add("inquiry-content");
    textArea.classList.add("update-content");
    updateTextArea.append(textArea);

    // XSS 방지 처리 해제
    beforeContent = beforeContent.replaceAll("&amp;", "&");
    beforeContent = beforeContent.replaceAll("&lt;", "<");
    beforeContent = beforeContent.replaceAll("&gt;", ">");
    beforeContent = beforeContent.replaceAll("&quot;", "\"");

    // 개행문자 처리 해제
    beforeContent = beforeContent.replaceAll("<br>", "\n");

    // 댓글 내용 추가
    textArea.value = beforeContent;

    // 버튼 영역 + 수정/취소 버튼 생성
    const replyBtnArea = document.createElement("div");
    replyBtnArea.classList.add("reply-btn-area");

    const updateBtn = document.createElement("button");
    updateBtn.innerText = "수정";
    updateBtn.classList.add("post-btn");
    updateBtn.setAttribute("onclick", "updateReply(" + replyNo + ", this)");

    const cancelBtn = document.createElement("button");
    cancelBtn.innerText = "취소";
    cancelBtn.classList.add("post-btn");
    cancelBtn.setAttribute("onclick", "updateCancel(this)");

    replyBtnArea.append(updateBtn, cancelBtn);
    updateTextArea.append(replyBtnArea);
}

// 답변 수정 취소
function updateCancel(btn){
    if(confirm("답변 수정을 취소하시겠습니까?")){
        btn.parentElement.previousElementSibling.parentElement.innerText = beforeContent;
    }
}

// 답변 수정
function updateReply(replyNo, btn){
    const updateText = document.getElementsByClassName("update-content")[0].value;

    $.ajax({

        url : contextPath + "/admin/OneOnOneInquiry/update",
        data : {"replyNo" : replyNo,
                "replyContent" : updateText},

        type : "POST",
        success : function(result){
            if(result > 0){
                alert("답변이 수정되었습니다.");
                selectReplyList();

            } else{
                alert("답변 수정에 실패했습니다.");
            }
        },

        error : function(req, status, error){
            console.log("답변 수정 실패");
            console.log(req.responseText);
        } 
    });
}

selectReplyList();