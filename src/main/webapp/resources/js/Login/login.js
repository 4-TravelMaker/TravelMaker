function validate(){
    const idInput = document.getElementById("idInput");
    const pwInput = document.getElementById("pwInput");

    if(idInput.value.trim().length == 0){
     alert("아이디를 입력하세요");
     idInput.focus();
     return false;
    }

    if(pwInput.value.trim().length == 0){
     alert("비밀번호를 입력하세요");
     pwInput.focus();
     return false;
    }


 }

 