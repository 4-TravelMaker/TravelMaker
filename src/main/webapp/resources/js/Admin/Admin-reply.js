// 댓글 검색 및 조회
document.getElementById("search-btn1").addEventListener("click", function(){

    const search = document.getElementById("search");  // input값
    const replybody = document.getElementById("replybody"); // tbody 영역 


    $.ajax({
        url : "reply",
        data : {"memberId" : search.value},
        type : "POST",
        dataType : "JSON",

        success : function(rList){
            
            replybody.innerHTML = "";

            if(rList != null){ // 댓글 정보가 있을 때 

                alert("성공");

                const tr = document.createElement("tr");

                const td1 = document.createElement("td");
                const input = document.createElement("input");

                input.setAttribute("type", "checkbox");

                const td2 = document.createElement("td");
                td2.innerText = reply.memberId; // 회원 번호 

                const td3 = document.createElement("td");
                td3.innerText = reply.replyContent; // 댓글 내용 

                const td4 = document.createElement("td");
                td4.innerText = reply.createDate; // 작성일 

                td1.append(input);

                tr.append(td1, td2, td3, td4);

                replybody.append(tr);

            }else{ // 댓글이 없을 때 

                alert("실패");

                const tr = document.createElement("tr");

                const td = document.createElement("td");

                td.setAttribute("colspan", 4);

                td.innerText = '검색되는 댓글이 없습니다..';

                tr.append(td);

                replybody.append(tr);

            }
        },

        error : function(){
            console.log("에러 발생");
        }
    });

})