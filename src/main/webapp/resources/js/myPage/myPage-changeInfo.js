/* 비밀번호 유효성 검사 */
const pw = document.getElementById("pw");

pw.addEventListener("keyup", () => {
    const regExp = /^[A-Za-z0-9`~!@#\$%\^&\*\(\)\{\}\[\]\-_=\+\\|;:'"<>,\./\?]{6,20}$/;
    const span = document.querySelector("#pw-check");

    if(regExp.test(pw.value)) {
        span.innerHTML = "적합한 비밀번호입니다."
        span.style.color = "green";
        span.style.fontWeight = "bold";

    } else {
        span.innerHTML = "적합하지 않은 비밀번호입니다."
        span.style.color = "red";
        span.style.fontWeight = "bold";
    }

    if(pw.value == "") {
        span.innerHTML = "　";
    }

})



/* 닉네임 유효성 검사 */
const nicknameCheck = document.querySelector("#nickname-check");
const nickname = document.querySelector("#nickname");

nickname.addEventListener("keyup", () => {
    const regExp = /^[가-힣]{2,8}$/;
    const span = document.querySelector("#nickname-span");
    
    
    if(regExp.test(nickname.value)) {
        span.innerHTML = "유효한 닉네임 형식입니다.";
        span.style.color = "green";
        span.style.fontWeight = "bold";
        
    } else {
        span.innerHTML = "닉네임 형식이 유효하지 않습니다.";
        span.style.color = "red";
        span.style.fontWeight = "bold";
    }
    
    if(nickname.value == "") {
        span.innerHTML = "　";
    }

})


/* 닉네임 중복 검사 클릭 이벤트 */
nicknameCheck.addEventListener("click", function(){

    const regExp = /^[가-힣]{2,8}$/;

    console.log(contextPath);

    if(!regExp.test(nickname.value)) {
        return print(nickname, "닉네임은 한글 2~8글자로 입력해주세요.");
    }

    $.ajax({

        url : contextPath + "/member/nicknameCheck",
        data : {"inputNickname" : nickname.value},
        type : "GET",
        success : function(result){
            if(result == 0) {
                alert("사용 가능한 닉네임입니다.");

            } else {
                alert("이미 사용 중인 닉네임입니다.");
            }
        },
        error : function(req, status, error){
            console.log("닉네임 중복 검사 실패");
            console.log(req.responseText);
        }

    });

})



/* 주소 검색 버튼 클릭 이벤트 */
const addressBtn = document.getElementById("address-btn");
addressBtn.addEventListener("click", function(){
    new daum.Postcode({
        oncomplete: function(data) {
            
            let fullAddr = '';
            let extraAddr = '';

            if(data.userSelectedType === 'R') {
                fullAddr = data.roadAddress;
            } else {
                fullAddr = data.jibunAddress;
            }

            if(data.userSelectedType == 'R') {
                if(data.bname !== '') {
                    extraAddr += data.bname;
                }
                if(data.buildingName !== '') {
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }

                fullAddr += (extraAddr !== '' ? ' (' + extraAddr + ')' : '');
            }
            
            document.getElementById("address").value = fullAddr;
            document.getElementById("zipcode").value = data.zonecode;
            document.getElementById("detail").value = '';
        }
    }).open();
})

function print(el, msg) {
    alert(msg);
    el.focus();
    return false;
}

/* form 제출 시 비밀번호 입력 체크 */
function validate() {

    const pw = document.getElementById("pw");
    const pw2 = document.getElementById("pw2");
    const regExp = /^[A-Za-z0-9`~!@#\$%\^&\*\(\)\{\}\[\]\-_=\+\\|;:'"<>,\./\?]{6,20}$/;

    if(pw.value.trim().length == 0) {
        return print(pw, "비밀번호를 입력해주세요.");
    }

    if(pw2.value.trim().length == 0) {
        return print(pw2, "비밀번호를 입력해주세요.");
    }

    if(pw.value != pw2.value) {
        return print(pw, "비밀번호가 일치하지 않습니다.")
    }

    if(!regExp.test(pw.value)) {
        return print(pw, "비밀번호는 6~20글자로 입력해주세요.");
    }

    
}



/* 프로필 이미지 변경 미리보기 */
const profileUpload = document.getElementById("profile-upload");

if(profileUpload != null) {
    
    profileUpload.addEventListener("change", function(){

        if(this.files[0] != undefined) {

            const reader = new FileReader();

            reader.readAsDataURL(this.files[0]);

            reader.onload = function(e){
                const profileImage = document.getElementById("profile-image");

                profileImage.setAttribute("src", e.target.result);

                document.getElementById("delete").value = 0;
            } 

        }

    });
}


function profileValidate(){

    const inputImage = document.getElementById("input-image");

    const del = document.getElementById("delete");

    if(inputImage.value == '' && del.value == 0) {
        
        alert("이미지를 선택한 후 변경 버튼을 클릭해주세요.");
        return false;
    }

    return true;
}

// 프로필 이미지 옆 x 버튼 클릭 시
document.getElementById("delete-image").addEventListener("click", function(){

    const del = document.getElementById("delete");

    if(del.value == 0) {

        document.getElementById("profile-image").setAttribute("src", contextPath + "/resources/images/myPageProfile/profile.png" );
    
        document.getElementById("input-image").value = "";

        del.value = 1;
    }
})