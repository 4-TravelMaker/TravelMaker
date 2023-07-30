// 게시글 좋아요 수 조회
function selectLikeList() {

    $.ajax({

        url : "selectLike",
        data : {"boardNo" : boardNo},
        type : "POST",
        success : function(likeCount) {

            const likeCountBox = document.getElementById("likeCountBox");

            likeCountBox.innerText = likeCount;
        },
        error : function(req, status, error){
            console.log(req.responseText);
        }
    });

}





// 좋아요 버튼 클릭 이벤트
const likeBtn = document.getElementById("like-btn");
const likeBtnBox = document.getElementById("like-btn-box");

likeBtn.addEventListener("click", function(){

    if(loginMemberNo == "") {
        alert("로그인 후 클릭 해주세요.");
        return;
    }

    if(likeBtn.classList.contains("full")) { // 좋아요 취소
        
        $.ajax({

            url : "minusLike",
            data : {"memberNo" : loginMemberNo,
                    "boardNo" : boardNo},
            type : "POST",
            success : function(result) {
                if(result > 0) {
                    selectLikeList();
                    
                    likeBtn.src = contextPath + "/resources/images/Review/heart-empty.png";
                    likeBtn.classList.remove("full");
                    likeBtn.classList.add("empty");

                } else {
                    alert("좋아요 취소 오류 발생");
                }
            },
            error : function(req, status, error){
                console.log(req.responseText);
            }
        });
        
        
    }

    if(likeBtn.classList.contains("empty")) { // 좋아요 클릭

        $.ajax({

            url : "plusLike",
            data : {"memberNo" : loginMemberNo,
                    "boardNo" : boardNo},
            type : "POST",
            success : function(result) {
                if(result > 0) {
                    selectLikeList();
                    
                    likeBtn.src = contextPath + "/resources/images/Review/heart-full.png";
                    likeBtn.classList.remove("empty");
                    likeBtn.classList.add("full");
                } else {
                    alert("좋아요 클릭 오류 발생");
                }
            },
            error : function(req, status, error){
                console.log(req.responseText);
            }
        });

        

    }
})