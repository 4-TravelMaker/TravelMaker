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
    const pwQuestionNunber = numberQ.options[numberQ.selectedIndex].value;

   

    $.ajax({
        url : "findIdCheck",
        data :  {"nameInput" : nameInput.value ,
                "ism-Select" : numberQ.value,
                "answer-Input" : memberA.value },
        type : "POST" ,
        success : function(result){
            var massage = "";

            
            if(nameInput.value == "" || memberA.value == "" || pwQuestionNunber == '0' ){

                alert("빈칸에 공란이 있으면 안됩니다");

             }  else if(result != "null"){

                massage = "회원 아이디는  " + result +  "  입니다.";
				$("#spanId").html(massage);

            } else {

                massage = "해당하는 아이디가 존재하지 않습니다";
				$("#spanId").html(massage);
            }


            
        },

        error : function(){


            console.log("에러발생");


        }


        });

}