// 회원 정보 조회
// 아이디를 입력받아 일치하는 회원 정보를 출력

document.getElementById("search-btn").addEventListener("click", function(){

    $.ajax({

        url : "/admin/memberSelectOne",
        dataType : "json",

        success : function(){
            console.log(memberList)
        },

        error : function(){
            console.log("에러 발생");
        }

    });

})