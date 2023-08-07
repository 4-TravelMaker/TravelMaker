

                     



        /* 아이디 유효성 검사 */
        const id = document.getElementById("id");
        const span = document.querySelector(".idcheckArea");
        const regExp = /^[a-z][a-z0-9]{5,19}$/;
        
        id.addEventListener("input", function() {
            
            if(id.value.trim().length == 0){
                
                span.innerHTML = "아이디를 입력해주세요."
                
            }
            
            if(regExp.test(id.value)) {
                span.innerHTML = "적합한 아이디 입니다."
                span.style.color = "green";
                span.style.fontWeight = "bold";

            } else {
                span.innerHTML = "적합하지 않은 아이디입니다."
                span.style.color = "red";
                span.style.fontWeight = "bold";
            }

            if(id.value.length ==1){
                span.innerHTML = "아이디는 1글자 이상 입력하세요"
                span.style.color = "red";
            }

            if(id.value.length == 0){
                span.innerHTML = "　";
            } else if(id.value.length > 20){
                span.innerHTML = "아이디는 20자이내로 입력하세요"
                span.style.color = "red";
            }

        })

        // 이메일 유효성 검사

        const email = document.getElementById("inputEmail");
        const span2 = document.getElementById("emailArea");
        const regExp4 = /^[\w-\_]{4,}@[\w-\_]+(\.\w+){1,3}/;

        email.addEventListener("input",function(){

            if(regExp4.test(email.value)) {
                span2.innerHTML = "적합한 이메일 입니다."
                span2.style.color = "green";
                span2.style.fontWeight = "bold";

            } else{
                span2.innerHTML = "적합하지 않은 이메일입니다."
                span2.style.color = "red";
                span2.style.fontWeight = "bold";
            }


        })

        // 아이디 중복검사


        const idDupcheck = document.getElementById("id-check");
        let checkId = false;

        idDupcheck.addEventListener("click", function(){

            $.ajax({

                url : "idDupcheck",

                data : { "id" : id.value },

                type : "GET" ,

                success : function(result){

                if(result == 1){

                    alert("이미 사용중인 아이디 입니다.");
                    checkId = false;


                
                } else if(id.value == "") { 

                    alert("아이디 입력을 해주세요");
                    id.focus();
                    checkId = false;
                 } else if(!regExp.test(id.value)){

                    alert("적합하지 않은 아이디 입니다")
                    checkId = false;
                 }
                 else{

                    alert("사용 가능한 아이디 입니다");

                    checkId = true;

                    }
                },

                error : function(){


                    console.log("에러발생");


                }


            });


        });




        /* 이름 유효성 검사 */

        const memberName = document.getElementById("memberName");

        let checkNm = false;

        memberName.addEventListener("input" , () => {

            const regExp = /^[가-힣]{2,6}$/
            const span = document.querySelector(".nameText");

            if(memberName.value.trim().length == 0){
                
                span.innerHTML = "이름을 입력해주세요."
                checkNm = false;
                
            }

            if(regExp.test(memberName.value)) {
                span.innerHTML = "적합한 이름 입니다."
                span.style.color = "green";
                span.style.fontWeight = "bold";
                checkNm = true;

            } else {
                span.innerHTML = "적합하지 않은 이름입니다."
                span.style.color = "red";
                span.style.fontWeight = "bold";
                checkNm = false;
                
            }

            if(memberName.value.length ==1){
                span.innerHTML = "이름은 1글자 이상 입력하세요"
                span.style.color = "red";
                checkNm = false;
            }

            if(memberName.value.length == 0){
                span.innerHTML = "　";
                checkNm = false;
                
            } else if(memberName.value.length > 6){
                span.innerHTML = "이름은 6자이내로 입력하세요"
                span.style.color = "red";
                checkNm = false;

            } 
            
        })




               


        /* 비밀번호 유효성 검사 */
        const pw = document.getElementById("pw");
        const pw2 = document.getElementById("pw2");
        const pwcheck = document.getElementById("pwcheckarea");

        pw.addEventListener("input", () => {
            const regExp = /^[A-Za-z0-9`~!@#\$%\^&\*\(\)\{\}\[\]\-_=\+\\|;:'"<>,\./\?]{6,20}$/;
            const span = document.querySelector("#pw-check");


            if(pw.value.trim().length == 0){
                
                span.innerHTML = "비밀번호를 입력해주세요."
                
            }


            if(regExp.test(pw.value)) {
                pwcheck.innerHTML = "적합한 비밀번호입니다."
                pwcheck.style.color = "green";
                pwcheck.style.fontWeight = "bold";


            } else {
                pwcheck.innerHTML = "적합하지 않은 비밀번호입니다."
                pwcheck.style.color = "red";
                pwcheck.style.fontWeight = "bold";

            }

            if(pw.value == "") {
                pwcheck.innerHTML = "　";

            }

        })
        

        
        
        
        
        /* 닉네임 유효성 검사 */
        const nicknameCheck = document.querySelector("#nickname-check");
        const nickname = document.querySelector("#nickname");
         
        
        nickname.addEventListener("input", () => {
           
            const span = document.querySelector("#nickname-span");
            
            const regExp = /^[가-힣]{2,8}$/;


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




        // 닉네임 중복검사

        const memberNickname = document.getElementById("nickname-check");
        let checkNickname = false;

        const regExp6 = /^[가-힣]{2,8}$/;

        memberNickname.addEventListener("click", function(){

            $.ajax({

                url : "nickNameDupcheck",

                data : { "memberNickname" : nickname.value },

                type : "GET" ,

                success : function(result){

                if(result == 1){

                    alert("이미 사용중인 닉네임 입니다.");
                    checkNickname = false;

                } else if(nickname.value == ""){ 
                    
                    alert("닉네임을 입력해주세요");
                    nickname.focus();
                    checkNickname = false;
                }
                else if(!regExp6.test(nickname.value)){

                    alert("알맞은 닉네임 형식이 아닙니다")
                    checkNickname = false;

                } else{

                    alert("사용 가능한 닉네임 입니다");
                    checkNickname = true;
                }


                },

                error : function(){


                    console.log("에러발생");


                }


            });


        });

       


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
                    
                    document.getElementById("address").value = fullAddr;
                    document.getElementById("zipcode").value = data.zonecode;
                }
            }).open();
        })

        // 이메일 인증번호 발송

        const sendEmail = document.getElementById("personalAuthentication");
        const inputEmail = document.getElementById("inputEmail");

        const inputKey = document.getElementById("personalAuthenticationKey");
        const checkKey = document.getElementById("personalAuthentication1");

        let ranCode;
        let checkEmail = false;

        sendEmail.addEventListener("click", function(){

            
            if(inputEmail.value.trim().length == 0){
                alert("이메일을 입력해주세요.");
                inputEmail.focus();
                checkEmail = false;
            } else if(!regExp4.test(email.value)){
                alert("이메일 유효성이 맞지않습니다");
            }
            else{
                $.ajax({
                    url : "authentication",
                    data : {"inputEmail" : inputEmail.value
                           },
                    type : "POST",
        
                    success : function(res){
                       
                        if(!res == 0){
                            alert("해당 이메일로 인증번호를 전송했습니다.");
                            ranCode = res;
                            checkEmail = true;
                        }
                        
                        
                    },
        
                    error : function(){
                        console.log("에러발생");
                    }
                });
            }
        });




        // 인증번호 확인

        let count = 0;

        let checkAtNum = false;
        
        const email2Btn = document.getElementById("personalAuthentication1");

        email2Btn.addEventListener("click", function(){

            debugger
            if(inputKey.value.trim().length == 0 ){
                alert("인증번호를 입력해주세요");
                inputKey.focus();
                checkAtNum = false;
            } else if(ranCode == null || ranCode == ''){
                alert("이메일 인증부터 해주세요")
                checkAtNum = false;
            }
            else{

                $.ajax({
                    url : "authenticationCheck",
                    data : {"personalAuthenticationKey" : inputKey.value,
                            "ranCode" : ranCode},
                    type : "Post",
                    success : function(res){

                        if(res > 0){
                            alert("인증이 완료되었습니다.");
                            count = 1;
                            checkAtNum = true;
                        }else{
                            alert("인증번호가 일치하지 않습니다.");
                            inputKey.value = "";
                            inputKey.focus();
                            count = 0;
                            checkAtNum = false;
                        }
                    },
                    error : function(){
                        console.log("에러 발생");
                    }
                })
            }
        })





        /* alert + return false 함수 */
        function print(el, msg) {
            alert(msg);
            el.focus();
            return false;
        }   

        const regExp1 = /^[A-Za-z0-9`~!@#\$%\^&\*\(\)\{\}\[\]\-_=\+\\|;:'"<>,\./\?]{6,20}$/;
        const regExp2 = /^[가-힣]{2,6}$/ //이름
        const regExp3 = /^[가-힣]{2,8}$/; // 닉네임
        /* form 제출 시 */
        function validate() {
           

            //아이디 체크

            if(id.value.trim().length == 0){
                return print(id, "아이디를 입력해주세요");
            } 

            if(checkId == false) {
                return print(id, "아이디 중복 확인을 해주세요.");
            }


            //이메일 본인인증 체크 
            if(checkEmail == false){
                return print(inputEmail,"이메일 본인인증을 해주세요");
            }

            // 인증번호 체크

            if(checkAtNum == false){
                return print(inputKey,"인증번호 인증을 해주세요");

            }

            // 이름 체크

            if(memberName.value.trim().length == 0){
                return print(memberName, "이름을 입력해주세요");
            }

            if(checkNm == false){
                return print(memberName, "이름 유효성이 맞지 않습니다.");
            }


            // 비밀번호 체크
            if(pw.value.trim().length == 0){
               return print(pw, "비밀번호를 입력해주세요");
            }

            // 비밀번호 확인 체크
            if(pw2.value.trim().length == 0){
                return print(pw2, "비밀번호확인을 입력해주세요"); 
            }
           
            if(pw.value != pw2.value) {
                return print(pw, "비밀번호가 일치하지 않습니다.")
            }

            if(!regExp1.test(pw.value)) {
                return print(pw, "비밀번호는 6~20글자로 입력해주세요.");
            }

            if(!regExp1.test(pw2.value)) {
                return print(pw2, "비밀번호는 6~20글자로 입력해주세요.");
            }


            // 닉네임 입력
            if(nickname.value == 0){
                return print(nickname, "닉네임을 입력해주세요");
            }

            if(checkNickname == false) {
                return print(nickname, "닉네임 중복 확인을 해주세요.");
            }

            // 비밀번호 찾기 질문 선택 안했을시 강요

            const pwQuestion = document.getElementById("pwQuestion");

            const pwQuestionNunber = pwQuestion.options[pwQuestion.selectedIndex].value;

            if(pwQuestionNunber == 'basic'){

                alert("비밀번호 찾기 질문을 선택해주세요");
                pwQuestion.focus();
                return false;
            }

            // 비밀번호 찾기 답변 선택 안했을시 강요

            const pwAnswer = document.getElementById("pwAnswer");

            if(pwAnswer.value == 0){

            alert("비밀번호 찾기 답변을 입력해주세요");
                pwAnswer.focus();

                return false;
            }

            
           

            return true;
           
        }

        

     
      

     