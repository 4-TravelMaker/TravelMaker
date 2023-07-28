const findButton = document.getElementById("findIdButton");  // 확인 버튼 

const inputID = document.getElementById("idInput"); // id 입력창
const inpuutAnswer = document.getElementById("answer-Input"); // pw 입력창 
const idQuestion = document.getElementById("ism-Select"); // 질문 체크 
const pwCheckingArea = document.getElementById("pwCheckingArea"); // 비밀번호 일치 문구 출력 


findButton.addEventListener("click", function(){
    $.ajax({
        url : "findPw",
        data : {"inputId" : inputID.value},
        type : "POST",
        dataType : "JSON",

        success : function(member){
            alert("성공><");

            if(member){
                pwCheckingArea.innerHTML = "비밀번호가 일치하지 않습니다."
            } else {
                pwCheckingArea.innerHTML = "비밀번호가 일치합니다.." 
            }
        },
        error : function(req, status, error){
            console.log("에러발생");
            console.log(req.responseText);
        }
    });
})