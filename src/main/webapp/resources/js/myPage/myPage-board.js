/* 게시글 제목 클릭 이벤트 */
let num = 0;

$(".board-title").on("click", function(){

    if($(this).next(".contents").css("display") == "none") {
        $(".contents").slideUp(300);
        $(this).next().slideDown(300);

    } else {
        $(this).next().slideUp();
    }
})


/* 선택 삭제 버튼 클릭 이벤트 */
const remSel = document.getElementById("remove-sel");
const boardNo = document.getElementById("check");

remSel.addEventListener("click", function(){

    if(confirm("게시글을 삭제하시겠습니까?")){

        $.ajax({
            url: "delete",
            data:{"boardNo" : boardNo.value},
            type: "get",
            success : function(result){
                if(result > 0){


                      alert("게시글이 삭제 되었습니다.");
                  } else {
                      alert ("게시글 삭제에 실패했습니다..");
                  }
            },
            error : function(req, status, error){
                console.log("실패");
                console.log(req.responseText);
            }
        });
    }
})



/* 수정 버튼 클릭 */
$(".modify").on("click", function(){
    const answer = confirm("게시글 수정하시겠습니까?");

    if (answer) {
        // 수정 처리
        alert("수정 완료되었습니다.");
    }
})

/* 삭제 버튼 클릭*/
$(".delete").on("click", function(){
    const answer = confirm("게시글 삭제하시겠습니까?");
    if (answer) {
        $(this).parent(".contents").parent("section").next(".hr").remove(); /* hr 삭제 */
        $(this).parent(".contents").parent("section").remove(); /* 게시글 삭제 */
        alert("게시글을 삭제하였습니다.");
    }
})