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



/* 선택/전체 삭제 클릭 이벤트 */
const remSel = $("#remove-sel");
const remAll = $("#remove-all");

/* 선택 삭제 */
remSel.on("click", function(){

    let count = 0;

    /* 체크 개수 확인 for문 */
    for(let i = 0; i < $(".check").length; i++) {
        if($(".check")[i].checked) {
            count++;
        }
    }

    if(count > 0) {
        const answer = confirm("게시글 " + count + "개 삭제하시겠습니까?");
    
        if (answer) {
            // 삭제 처리
            for(let i = 0; i < $(".check").length; i++) {
                if($(".check")[i].checked) {

                    $(".check")[i].remove(); /* 체크박스 */
                    $(".board-title")[i].remove(); /* 게시글 제목 */
                    $(".hr")[i].remove(); /* hr */
                    $(".contents")[i].remove(); /* 게시글 내용 */
                    i--;
                }
            }
            alert("게시글을 삭제하였습니다.");
        }
    } else {
        alert("게시글을 1개 이상 선택해주세요.")
    }

})

/* 전체 삭제 */
remAll.on("click", function(){

    const answer = confirm("모든 게시글을 삭제하시겠습니까?");

    if (answer) {
        // 삭제 처리
        $("#board-area").empty();
        alert("모든 게시글을 삭제하였습니다.");
    } else {
        return false;
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