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