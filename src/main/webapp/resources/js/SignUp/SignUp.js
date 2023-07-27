const checkObj = {
    "id"                    : false,
    "memberName"            : false,
    "pw"                    : false,
    "nickname"              : false,
    "pw2"                   : false

    };


                     



        /* 아이디 유효성 검사 */
        const id = document.getElementById("id");
        const span = document.querySelector(".idcheckArea");
         const regExp = /^[a-z][a-z0-9]{5,19}$/;
        
        id.addEventListener("input", function() {
            
            if(id.value.trim().length == 0){
                
                span.innerHTML = "아이디를 입력해주세요."
                
                checkObj.id = false;
                
                return;
                
            }
            
            
            
            
            if(regExp.test(id.value)) {
                span.innerHTML = "적합한 아이디 입니다."
                span.style.color = "green";
                span.style.fontWeight = "bold";
                checkObj.id = true;

            } else {
                span.innerHTML = "적합하지 않은 아이디입니다."
                span.style.color = "red";
                span.style.fontWeight = "bold";
                checkObj.id = false;
            }

            if(id.value.length ==1){
                span.innerHTML = "아이디는 1글자 이상 입력하세요"
                span.style.color = "red";
                checkObj.id = false;
            }

            if(id.value.length == 0){
                span.innerHTML = "　";
            } else if(id.value.length > 20){
                span.innerHTML = "아이디는 20자이내로 입력하세요"
                span.style.color = "red";
                checkObj.id = false;
            }

        })

        // 아이디 중복검사

        const idDupcheck = document.getElementById("id-check");
        
        idDupcheck.addEventListener("click", function(){

            $.ajax({

                url : "idDupcheck",

                data : { "id" : id.value },

                type : "GET" ,

                success : function(result){

                if(result == 1){

                    alert("이미 사용중인 아이디 입니다.");
                    checkObj.id = false;


                
                } else if(id.value == "") { 

                    alert("아이디 입력을 해주세요");
                    id.focus();
                    checkObj.id = false;
                 } else if(!regExp.test(id.value)){

                    alert("적합하지 않은 아이디 입니다")
                    checkObj.id = false;
                 }
                 else{

                    alert("사용 가능한 아이디 입니다");

                    checkObj.id = true;


                    }


                },

                error : function(){


                    console.log("에러발생");


                }


            });


        });




        /* 이름 유효성 검사 */

        const memberName = document.getElementById("memberName");

        memberName.addEventListener("input" , () => {

            const regExp = /^[가-힣]{2,6}$/
            const span = document.querySelector(".nameText");

            if(memberName.value.trim().length == 0){
                
                span.innerHTML = "이름을 입력해주세요."
                
                checkObj.memberName = false;
                
                return;
                
            }

            if(regExp.test(memberName.value)) {
                span.innerHTML = "적합한 이름 입니다."
                span.style.color = "green";
                span.style.fontWeight = "bold";
                
                checkObj.memberName = true;

            } else {
                span.innerHTML = "적합하지 않은 이름입니다."
                span.style.color = "red";
                span.style.fontWeight = "bold";
                
                checkObj.memberName = false;
            }

            if(memberName.value.length ==1){
                span.innerHTML = "이름은 1글자 이상 입력하세요"
                span.style.color = "red";

                checkObj.memberName = false;
            }

            if(memberName.value.length == 0){
                span.innerHTML = "　";
                
            } else if(memberName.value.length > 6){
                span.innerHTML = "이름은 6자이내로 입력하세요"
                span.style.color = "red";

                checkObj.memberName = false;

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
                
                checkObj.pw = false;
                
                return;
                
            }




            if(regExp.test(pw.value)) {
                pwcheck.innerHTML = "적합한 비밀번호입니다."
                pwcheck.style.color = "green";
                pwcheck.style.fontWeight = "bold";

                checkObj.pw = true;

            } else {
                pwcheck.innerHTML = "적합하지 않은 비밀번호입니다."
                pwcheck.style.color = "red";
                pwcheck.style.fontWeight = "bold";

                checkObj.pw = false;
            }

            

            if(pw.value == "") {
                pwcheck.innerHTML = "　";

                checkObj.pw = false;
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

                checkObj.nickname = true;
                
            } else {
                span.innerHTML = "닉네임 형식이 유효하지 않습니다.";
                span.style.color = "red";
                span.style.fontWeight = "bold";

                checkObj.nickname = false;
                
            }
            
            if(nickname.value == "") {
                span.innerHTML = "　";
                checkObj.nickname = false;
            }

        })




        // 닉네임 중복검사

        const memberNickname = document.getElementById("nickname-check");

        const regExp6 = /^[가-힣]{2,8}$/;

        memberNickname.addEventListener("click", function(){

            $.ajax({

                url : "nickNameDupcheck",

                data : { "memberNickname" : nickname.value },

                type : "GET" ,

                success : function(result){

                if(result == 1){

                    alert("이미 사용중인 닉네임 입니다.");
                    checkObj.nickname = false;

                } else if(nickname.value == ""){ 
                    
                    alert("닉네임을 입력해주세요");
                    nickname.focus();
                    checkObj.nickname = false;
                }
                else if(!regExp6.test(nickname.value)){

                    alert("알맞은 닉네임 형식이 아닙니다")
                    checkObj.nickname = false;

                } else{

                    alert("사용 가능한 닉네임 입니다");
                    checkObj.nickname = true;
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



        /* form 제출 시 */
        function validate() {

            // let str;


            // for(let key in checkObj){



            //     if(!checkObj[key]){
    
            //         switch(key){
    
            //         case "id"         : str="아이디가"; break;                    
            //         case "memberName" : str="이름이"; break;            
            //         case "pw"         : str="비밀번호가"; break;                    
            //         case "nickname"   : str="닉네임이";  break;              
            //         case "pw2"        : str="전화번호가"; break;
    
            //         }
    
            //         str += "유효하지 않습니다";
    
            //         alert(atr);
    
            //         document.getElementById(key).focus();
    
            //         return false;
    
            //     }


            // }

            // return true;





            //아이디 체크

            const id = document.getElementById("id");

            if(id.value.trim().length == 0){

                alert("아이디를 입력해주세요");
                id.focus();
                return false;

            } 

            const memberName = document.getElementById("memberName");

            if(memberName.value.trim().length == 0){

                alert("이름을 입력해주세요");
                memberName.focus();
                return false;
            }

            // 비밀번호 체크

            const pw = document.getElementById("pw");

            if(pw.value.trim().length == 0){

               alert("비밀번호를 입력해주세요");
               pw.focus();

               return false;
            }

            // 비밀번호 확인 체크

            const pw2 = document.getElementById("pw2");

            if(pw2.value == 0){

               alert("비밀번호를 입력해주세요");
               pw2.focus();

                return false;
            }
            
            // 닉네임 입력

            const nickname = document.getElementById("nickname");

            if(nickname.value == 0){

                alert("닉네임을 입력해주세요");
                nickname.focus();

                return false;
            }

            // 주소 입력

            const address = document.getElementsByClassName("address");
            
            if(address[0].value == 0 | address[1] == 0){
                alert("주소검색 버튼을 눌러 주소를 입력하세요");
                return false;

            }

            if(address[2].value == 0){

                alert("상세 주소를 입력해주세요");
                address[2].focus();
                return false;
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

           
            // 비밀번호 서로 일치 안했을시 가입 못하게 하는구문

            if(pw.value == pw2.value) {
                return true;

            } else {
                alert("비밀번호가 서로 일치하지 않습니다.");
                return false;
            }

            


        }


        

     
      

     