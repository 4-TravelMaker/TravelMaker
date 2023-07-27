document.getElementById("findIdButton").onclick = function(){
    debugger
    var param = {
        userId : $("#nameInput").val(),
        memberQ : Number($("#ism-Select").val()),
        memberA : $("#answer-Input").val()
    };

    const nameInput = document.getElementById("nameInput");
    const numberQ = document.getElementById("ism-Select");
    const memberA = document.getElementById("answer-Input");

   

debugger
    $.ajax({
        url : "findIdCheck",
        data :  {"nameInput" : nameInput.value ,
                "ism-Select" : numberQ.value,
                "answer-Input" : memberA.value },
        type : "POST" ,
        success : function(result){
            debugger
            console.log("에러발생" + result);
            var massage = "";

            
            
            if(result != null){
                massage = "회원 아이디는  " + result +  "  입니다.";
				$("#spanId").html(massage);

            } else {
                massage = "회원 아이디는 없습니다";
				$("#spanId").html(massage);
            }

           



            
        },

        error : function(){


            console.log("에러발생");


        }


        });

}