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
                "memberNo" : loginMemberNo,
                "boardNo" : boardNo},

        type : "get",

        success : function(result){
            alert("답변이 작성되었습니다.")
        },

        error : function(req, status, error){
            console.log("답변 등록 실패");
            console.log(req.responseText);
        }
    });
})

// 답변 목록 조회
(function selectReplyList(){
    
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
                section1.innerText = "Re: ${detail.boardTitle}";

                const section2 = document.createElement("section");
                section2.innerText = "작성자 닉네임 : ${reply.memberNickname} &nbsp;| &nbsp;작성일 : ${reply.createDate}";

                const section3 = document.createElement("section");
                section3.innerText = "${reply.replyContent}";

                customerInquiry.append(section1, section2, section3);
            }
        },

        error : function(req, status, error){
            console.log("에러 발생");
            console.log(req.responseText);
        }
    })

})();