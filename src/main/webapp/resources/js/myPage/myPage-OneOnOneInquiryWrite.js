// 문의글 작성 취소
const cancelBtn = document.getElementById("cancel-btn");

cancelBtn.addEventListener("click", function(){ // 취소 버튼이 클릭되었을 때

    history.back();

})

// 문의글 작성 유효성 검사
function writeValidate(){
    const boardTitle = document.getElementById("post-title");
    const boardContent = document.getElementById("post-writing-area");

    if(boardTitle.value.trim().length == 0){
        alert("제목을 입력해 주세요.");
        boardTitle.value = "";
        boardTitle.focus();
        return false;
    }

    if(boardContent.value.trim().length == 0){
        alert("내용을 입력해 주세요.");
        boardContent.value = "";
        boardContent.focus();
        return false;
    }

    return true;
}