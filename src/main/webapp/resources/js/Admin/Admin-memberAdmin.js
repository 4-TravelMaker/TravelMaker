// 회원 정보 조회
// 아이디를 입력받아 일치하는 회원 정보를 출력
console.log(document.getElementById("search-btn"));

document.getElementsByClassName("search-btn")[0].addEventListener("click", function(){
console.log("test")
    const input = document.getElementById("member-search");
    const div = document.getElementById("memberList");

    $.ajax({

        url : "selectOne",
        data : { "memberId" : input.value },
        type : "POST",
        dataType : "JSON",

        success : function(member){
            console.log(member);
            div.innerHTML = "";

            if(member != null){ // 일치하는 회원 정보가 있을 때
                
                const tr = document.createElement("tr");

                const td1 = document.createElement("td");

                const input = document.createElement("input");
                input.setAttribute("type", "checkbox");

                const td2 = document.createElement("td");
                td2.innerText = member.memberNo;

                const td3 = document.createElement("td");
                td3.innerText = member.memberId;

                const td4 = document.createElement("td");
                td4.innerText = member.memberName;

                const td5 = document.createElement("td");
                td5.innerText = member.memberNickname;

                const td6 = document.createElement("td");
                td6.innerText = member.memberAddress;

                const td7 = document.createElement("td");
                td7.innerText = member.memberTheme;

                const td8 = document.createElement("td");
                td8.innerText = member.enrollDate;

                const td9 = document.createElement("td");
                td9.innerText = member.secessionFlag;

                td1.append(input);

                tr.append(td1, td2, td3, td4, td5, td6, td7, td8, td9);

                div.append(tr);
            
            } else { // 회원 정보가 없을 때

                const tr = document.createElement("tr");

                const td = document.createElement("td");

                td.setAttribute("colspan", 9);

                td.innerText = '일치하는 회원 정보가 없습니다.';

                tr.append(td);

                div.append(tr);
            }

        },

        error : function(){
            console.log("에러 발생");
        }
    });

})

// 회원 탈퇴 처리
// 체크박스 선택 후 회원 탈퇴 버튼을 눌러 탈퇴 처리
const secessionBtn = document.getElementById("secession-btn");
const checkbox = document.getElementById("checkbox");

secessionBtn.addEventListener("click", function(){
    
    // 체크박스가 체크 안 되어 있을 때
    if(!checkbox.checked){
        alert("탈퇴 처리할 회원을 선택해 주세요.");
    }

    if(checkbox.checked){
        
        if(confirm("정말 탈퇴시키겠습니까?")){

        }

    }

})