/* 게시글 제목 클릭 이벤트 */
let num = 0;

$(".board-title").on("click", function(){

    if($(this).next(".contents").css("display") == "none") {
        $(".contents").slideUp(300);
        $(this).next().slideDown(300);

    } else {
        $(this).next().slideUp();
    }

    selectReplyList();
})

// 답변 조회
function selectReplyList(){
    
    $.ajax({
        url : "/myPage/OneOnOneInquiry/list",
        data : {"boardNo" : boardNo},
        type : "get",
        dataType : "JSON",

        success : function(rList){
            const replySelectArea = document.getElementById("reply-select-area2");
            replySelectArea.innerHTML = "";
            
            for(let reply of rList){
                const section1 = document.createElement("section");
                section1.innerText = "작성자 닉네임 : " + reply.memberNickName + " | 작성일 : " + reply.createDate;

                const section2 = document.createElement("section");
                section2.innerHTML = reply.replyContent;
                
                customerInquiry.append(section1, section2);
            }
        },

        error : function(req, status, error){
            console.log("에러 발생");
            console.log(req.responseText);
        }
    })
}