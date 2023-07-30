const findButton = document.getElementById("findIdButton");  // 확인 버튼 

const inputID = document.getElementById("idInput"); // id 입력창
const inpuutAnswer = document.getElementById("answer-Input"); // pw 답변 입력창 
const idQuestion = document.getElementById("ism-Select"); // 질문 체크 
const pwCheckingArea = document.getElementById("pwCheckingArea"); // 비밀번호 일치 문구 출력 
const updateArea = document.getElementById("middle1-3");  // 수정 영역 



findButton.addEventListener("click", function(){
    $.ajax({
        url : "findPw",
        data : {"inputId" : inputID.value},
        type : "POST",
        dataType : "JSON",

        success : function(member){

            if(inpuutAnswer.value == member.memberAnswer){
                pwCheckingArea.innerHTML = "답변이 일치합니다.";
                pwCheckingArea.style.color = 'green';
                updateArea.style.display = 'block';
                

            } else {
                pwCheckingArea.innerHTML = "답변이 일치 하지 않습니다";
                pwCheckingArea.style.color = 'red';
                inpuutAnswer.value = "";
                inpuutAnswer.focus();
            }
        },
        error : function(req, status, error){
            console.log("에러발생");
            console.log(req.responseText);
        }
    });
})


document.getElementById("confrim").addEventListener("click", function(){

    const newPw = document.getElementById("edit-input1"); /* 수정할 비밀번호 */
    const pwConfirm = document.getElementById("edit-input"); /* 비밀번호 확인 */

    const confirmArea = document.getElementById("PwcheckingText");


    if(newPw.value != pwConfirm.value){
        confirmArea.innerHTML = "비밀번호가 일치하지 않습니다. <br> 다시 확인해주세요"
        confirmArea.style.color = 'red';
    }else{
        confirmArea.innerHTML = "비밀번호가 일치합니다. 수정 가능합니다."
        confirmArea.style.color = 'green';
    }
})

document.getElementById("pwEditButton").addEventListener("click", function(){

    const id = document.getElementById("idInput");   /* 회원 아이디 */
    const newPw = document.getElementById("edit-input1"); /* 수정하고 싶은 비밀번호 */
    const pwConfirm = document.getElementById("edit-input"); /* 비밀번호 확인 */

    $.ajax({
        url : "updatePw",
        data : {"id" : id.value,
                "newPw" : newPw.value,
                "pwConfirm" : pwConfirm.value},
        type : "POST",

        success : function(result){
            alert("비밀번호가 수정되었습니다.")
        },
        
        error : function(req, status, error){
            alert("에러")
            console.log("에러발생");
            console.log(req.responseText);
        }
    });
})



