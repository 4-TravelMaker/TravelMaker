$("#secession-btn").on("click", function(){
    if($("#check")[0].checked) {
        $(".pw-prompt").slideDown(300);

    } else {
        alert("탈퇴 전 안내사항을 확인하고 체크해주세요.");
    }
})


$(".cancel").on("click", function(){
    $(".pw-prompt").slideUp(300);
})

function pwPrompt() {
    
    if($("#pw-check").val() == "1234") {
        $(".pw-prompt").slideUp(300);
        $("#pw-check").val('');
        return true;

    } else {
        alert("비밀번호가 일치하지 않습니다.");
        $("#pw-check").focus();
        return false;
    }

}