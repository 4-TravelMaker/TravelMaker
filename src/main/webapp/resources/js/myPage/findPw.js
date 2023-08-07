const findButton = document.getElementById("findIdButton");  // 확인 버튼 

const inputID = document.getElementById("idInput"); // id 입력창
const inpuutAnswer = document.getElementById("answer-Input"); // pw 답변 입력창 
const idQuestion = document.getElementById("ism-Select"); // 질문 체크 
const pwCheckingArea = document.getElementById("pwCheckingArea"); // 비밀번호 일치 문구 출력 
const updateArea = document.getElementById("middle1-3");  // 수정 영역 
const cancelBtn = document.getElementById("cancelButton");  // 취소 버튼 



findButton.addEventListener("click", function(){
    $.ajax({
        url : "findPw",
        data : {"inputId" : inputID.value},
        type : "POST",
        dataType : "JSON",

        success : function(member){

            if(inpuutAnswer.value == member.memberAnswer && idQuestion.value == member.memberQuestionCode){
                pwCheckingArea.innerHTML = "답변이 일치합니다.";
                pwCheckingArea.style.color = 'green';
                updateArea.style.display = 'block';
                

            } else {
                pwCheckingArea.innerHTML = "질문 또는 답변이 일치 하지 않습니다";
                pwCheckingArea.style.color = 'red';
                inpuutAnswer.value = "";
                inpuutAnswer.focus();
            }
        },
        error : function(req){
            console.log("에러발생");
            console.log(req.responseText);
        }
    });

})

let count = 0;


document.getElementById("confirm").addEventListener("click", function(){

    count = 1;

    const newPw = document.getElementById("edit-input1"); /* 수정할 비밀번호 */
    const pwConfirm = document.getElementById("edit-input"); /* 비밀번호 확인 */

    const confirmArea = document.getElementById("PwcheckingText");


    if(newPw.value != pwConfirm.value){
        confirmArea.innerHTML = "비밀번호가 일치하지 않습니다. <br> 다시 확인해주세요"
        confirmArea.style.color = 'red';
        return false;

    }else{
        confirmArea.innerHTML = "비밀번호가 일치합니다. 수정 가능합니다."
        confirmArea.style.color = 'green';
        return true;

    }
})


cancelBtn.addEventListener("click", function(){

    if(confirm("비밀번호 찾기를 취소하시겠습니까?")){

        alert("메인페이지로 이동합니다.")
        location.href = "/TravelMaker/index.jsp";

    }
})

const confrim = document.getElementById("confirm");

function changePwValidate(){

    if(count == 0){
        alert("비밀번호 확인을 먼저 해주세요");
        return false;
    }
}







