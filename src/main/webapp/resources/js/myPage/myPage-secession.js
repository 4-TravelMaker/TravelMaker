$("#secession-btn").on("click", function(){
    if($("#check")[0].checked) {
        $(".pw-prompt").slideDown(300);

    } else {
        alert("탈퇴 전 안내사항을 확인하고 체크해주세요.");
    }
});


$(".cancel").on("click", function(){
    $(".pw-prompt").slideUp(300);
});

function pwPrompt() {

    var flag = true;

    const inputPw = document.getElementById("pw-check");

    $.ajax ({

        url : contextPath + "/myPage/pwCheck",
        data : {"inputPw" : inputPw.value,
                "memberNo" : loginMemberNo},
        type : "GET",
        async: false,
        success : function(result){


            if(result > 0) {
                $(".pw-prompt").slideUp(300);
                $("#pw-check").val('');
                flag = true;

            } else {
                alert("비밀번호가 일치하지 않습니다.");
                $("#pw-check").focus();
                flag = false;
            }

        },
        error : function(req, status, error){
            console.log(req.responseText);
        }

    });
    return flag;

}