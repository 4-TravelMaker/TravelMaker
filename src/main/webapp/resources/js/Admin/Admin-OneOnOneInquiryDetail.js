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

    $.ajax({
        url : "insert",

        data : {"replyContent" : replyContent.value,
                "memberNo" : loginMember.memberNo,
                "boardNo" : detail.boardNo},

        type : "POST",

        success : function(result){
            alert("답변이 작성되었습니다.")
        },

        error : function(req, status, error){
            console.log("답변 등록 실패");
            console.log(req.responseText);
        }
    });
})