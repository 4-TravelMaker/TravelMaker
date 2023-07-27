const findButton = document.getElementById("findIdButton");  // 확인 버튼 

const inputID = document.getElementById("idInput"); // id 입력창
const inpuutAnswer = document.getElementById("answer-Input"); // pw 입력창 
const idQuestion = document.getElementById("ism-Select"); // 질문 체크 
const pwCheckingArea = document.getElementById("pwCheckingArea"); // 비밀번호 일치 문구 출력 


findButton.addEventListener("click", function(){

    $.ajax({

        url : "findPw",
        data : {"inputId" : inputID.value,
                "inpuutAnswer" : inpuutAnswer.value,
                "idQuestion" : idQuestion.value},
        type : "post",
        
        success : function(member){

            alert("성공...");

        

        },
        error : function(){
            alert("실패...");
        }
        






    })





})