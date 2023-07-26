// 회원 정보 조회
// 아이디를 입력받아 일치하는 회원 정보를 출력
document.getElementsByClassName("search-btn")[0].addEventListener("click", function(){
    
    const input = document.getElementById("member-search");
    const div = document.getElementById("memberList");

    $.ajax({

        url : "selectOne",
        data : { "memberId" : input.value },
        type : "GET",
        dataType : "JSON",

        success : function(member){

            div.innerHTML = "";

            if(member != null){ // 일치하는 회원 정보가 있을 때
                
                const tr = document.createElement("tr");

                const td1 = document.createElement("td");

                const input = document.createElement("input");
                input.setAttribute("type", "checkbox");
                input.setAttribute("name", "memberInfo");
                input.setAttribute("value", "회원 번호");

                const span = document.createElement("span");

                span.innerText = member.memberNo;

                const td2 = document.createElement("td");
                td2.innerText = member.memberId;

                const td3 = document.createElement("td");
                td3.innerText = member.memberName;

                const td4 = document.createElement("td");
                td4.innerText = member.memberNickname;

                const td5 = document.createElement("td");
                td5.innerText = member.memberAddress;

                const td6 = document.createElement("td");
                td6.innerText = member.memberTheme;

                const td7 = document.createElement("td");
                td7.innerText = member.enrollDate;

                const td8 = document.createElement("td");
                td8.innerText = member.secessionFlag;

                td1.append(input, span);

                tr.append(td1, td2, td3, td4, td5, td6, td7, td8);

                div.append(tr);
            
            } else { // 회원 정보가 없을 때

                const tr = document.createElement("tr");

                const td = document.createElement("td");

                td.setAttribute("colspan", 8);

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
const secessionBtn = document.getElementById("secession-btn"); // 탈퇴 버튼
const checkedMemberList = document.getElementsByName("memberNo"); // 멤버 체크박스
var count = 0;
let checkedMemberNo = 0;

secessionBtn.addEventListener("click", function(){

    for(var i=0; i<checkedMemberList.length; i++){
        if(checkedMemberList[i].checked == true){
            count++;
        }
    }

    if(count == 0){
        alert("탈퇴시킬 회원을 선택해 주세요.");
    }

    if(count > 1){
        alert("한 명만 선택해 주세요.");

        for(let i=0; i<checkedMemberList.length; i++){
            checkedMemberList[i].checked = false;
        }
    }

    for(let i=0; i<checkedMemberList.length; i++){

        if(checkedMemberList[i].checked){
            checkedMemberNo = checkedMemberList[i].value;
        }
    }

    $.ajax({

        url : "memberSecession",
        data : { "memberNo" : checkedMemberNo },
        type : "GET",
        dataType : "JSON",

        success : function(result){

            if(checkedMemberNo != null && result > 0){
                alert("회원 탈퇴 처리가 완료되었습니다.");
            } else{
                alert("회원 탈퇴 처리 실패");
            }
        },

        error : function(result){
            alert("오류 발생");
        }
    })
})

