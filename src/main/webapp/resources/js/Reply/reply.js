
// 댓글 목록 조회(AJAX)
function selectReplyList(){

    $.ajax({

        url : contextPath + "/boardNotice/reply/selectReplyList",
        data : {"boardNo" : boardNo},
        type : "GET",
        dataType : "JSON",
        success : function(rList){
            // 반환 받는 댓글 목록

            const replyList = document.getElementById("reply-list");
            replyList.innerHTML ="";

            // rList에 저장된 요소를 하나씩 접근
            for(let reply of rList){

                //행
                const replyRow = document.createElement("li");
                replyRow.classList.add("reply-row");

                // 작성자
                const replyWriter = document.createElement("p");
                replyWriter.classList.add("reply-writer");

                // 프로필 이미지
                const profileImage = document.createElement("img");

                // 프로필 이미지가 있는 경우
                if(reply.profileImage != null){

                    profileImage.setAttribute("src", contextPath + reply.profileImage);

                }else{ // 프로필 이미지가 없는 경우
                    profileImage.setAttribute("src", contextPath + "/resources/images/profile.png");
                }

                // 작성자 닉네임
                const memberNickname = document.createElement("span");
                memberNickname.innerText = reply.memberNickname;

                // 작성일
                const replyData =document.createElement("span");
                replyData.classList.add("reply-data");
                replyData.innerText = "(" + reply.createData + ")";

                replyWriter.append(profileImage, memberNickname, replyData);


                const replyContent = document.createElement("p");
                replyContent.classList.add("reply-content");

                replyContent.innerHTML = reply.replyContent;

                replyRow.append(replyWriter, replyContent);

                if(loginMemberNo == reply.memberNo){

                    // 버튼 영역
                    const replyBtnArea = document.createElement("div");
                    replyBtnArea.classList.add("reply-btn-area");

                    // 수정 버튼
                    const updateBtn = document.createElement("button");
                    updateBtn.innerText = "수정";
                    // 수정 버튼에 onclick 이벤트 추가
                    updateBtn.setAttribute("onclick", "showUpdateReply(" + reply.replyNo + ", this)");

                    // 삭제 버튼
                    const deleteBtn = document.createElement("button");
                    deleteBtn.innerText = "삭제";
                    //삭제 버튼에 onclick 이벤트 추가
                    deleteBtn.setAttribute("onclick","deleteReply("+ reply.replyNo + ")");

                    replyBtnArea.append(updateBtn, deleteBtn);

                    replyRow.append(replyBtnArea);

                }

                replyList.append(replyRow);



            }

        },
        error : function(){
            console.log("에러 발생");
        }



    });
}