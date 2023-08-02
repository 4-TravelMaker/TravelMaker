

const updateArea = document.getElementsByClassName("customer-inquiry")[0];
const updateTitle = document.getElementsByClassName("updateContent-title")[0];
const updateContent = document.getElementsByClassName("updateContent-content")[0];

const replyBtnArea = document.getElementsByClassName("reply-btn-area")[0];
const replyBtn = document.getElementById("reply-btn");

let beforeContent;

replyBtn.addEventListener("click", function(){

    let beforeTitle = updateTitle.innerText;
    updateTitle.innerHTML = "";
    const textarea1 = document.createElement("textarea");
    textarea1.value = beforeTitle;
    textarea1.classList.add("title-style");
    updateTitle.append(textarea1);

    beforeContent  = updateContent.innerText;

    beforeContent = beforeContent.replaceAll("&amp;", "&");
    beforeContent = beforeContent.replaceAll("&lt;", "<");
    beforeContent = beforeContent.replaceAll("&gt;", ">");
    beforeContent = beforeContent.replaceAll("&quot;", "\"");

    beforeContent = beforeContent.replaceAll("<br>", "\n");

    updateContent.innerHTML = "";
    const textarea2 = document.createElement("textarea");
    textarea2.value = beforeContent;
    textarea2.classList.add("content-style");
    updateContent.append(textarea2);

    replyBtnArea.innerHTML = "";

    const button1 = document.createElement("button");
    button1.classList.add("reply-btn");
    button1.innerText = "수정";
    button1.setAttribute("onclick", "updateBoard(" + boardNo + ", this)");
    
    const button2 = document.createElement("button");
    button2.classList.add("cancel-btn");
    button2.innerText = "취소";

    replyBtnArea.append(button1, button2);

    document.getElementsByClassName("cancel-btn")[0].addEventListener("click", function(){
    
        if(confirm("게시글 수정을 취소하시겠습니까?")){
            location.reload();
        }
    })
})


const deleteBtn = document.getElementById("delete-btn");

deleteBtn.addEventListener("click", function(){

    if(confirm("정말 삭제하시겠습니까?")){

        $.ajax({
            
            url : contextPath + "/myPage/board-detail/delete",
            data : {"boardNo" : boardNo},
            type : "get",
    
            success : function(result){

                if(result > 0){
                    alert("삭제되었습니다.");
                    location.href="/TravelMaker/myPage/board?type=5";

                } else {
                    alert("게시글 삭제에 실패했습니다.");
                }

            },
    
            error : function(req, status, error){
                console.log("게시글 삭제 실패")
                console.log(req.responseText);
            }
        });

    }

})

function updateBoard(boardNo, btn){

const updateTitleValue = document.getElementsByClassName("title-style")[0].value;
const updateContentValue = document.getElementsByClassName("content-style")[0].value;

    $.ajax({

        url : contextPath + "/myPage/OneOnOneInquiry/update",
        data : {"boardNo" : boardNo,
                "boardTitle" : updateTitleValue,
                "boardContent" : updateContentValue},

        type : "POST",

        success : function(result){

            if(result > 0){
                
                if(confirm("정말 수정하시겠습니까?")){

                    alert("게시글이 수정되었습니다.");
                    location.reload();
                }

            } else{
                alert("게시글 수정에 실패했습니다.");
            }
        },

        error : function(req, status, error){
            console.log("게시글 수정 실패");
            console.log(req.responseText);
        } 
    });
}