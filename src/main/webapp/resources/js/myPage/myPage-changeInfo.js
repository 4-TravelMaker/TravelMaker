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
        console.log(nickname);
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



/* 프로필 사진 업로드 클릭 이벤트 */
const realUpload = document.querySelector("#real-upload");
const profileBtn = document.querySelector("#profile-btn");
const imagePreview = document.querySelector('#image-preview');

profileBtn.addEventListener("click", () => realUpload.click());

function loadFile(input) {

    let file = input.files[0];

    /* 새로운 이미지 태그 추가 */
    let newImage = document.createElement("img");
    newImage.setAttribute("class", "img");

    /* 이미지 source 가져오기 */
    newImage.src = URL.createObjectURL(file);

    newImage.style.width = "150px";
    newImage.style.height = "150px";

    // 이미지를 image-preview section에 추가
    if(imagePreview.firstElementChild != null) { /* image-preview에 이미지가 있을 경우 */
        imagePreview.firstElementChild.remove();
    }
    imagePreview.appendChild(newImage);

}



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
            
            document.getElementsByName("address")[0].value = fullAddr;
            document.getElementsByName("zipcode")[0].value = data.zonecode;
        }
    }).open();
})



/* form 제출 시 */
function validate() {

    const pw = document.getElementById("pw");
    const pw2 = document.getElementById("pw2");

    if(pw.value == pw2.value) {
        return true;

    } else {
        alert("비밀번호가 일치하지 않습니다.");
        return false;
    }

}