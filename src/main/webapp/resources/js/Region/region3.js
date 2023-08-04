// 북마크 누르기
const bookmarkBtn = document.getElementById("bookmark-btn");

bookmarkBtn.addEventListener("click", function(){

    $.ajax({

        url : contextPath + "/Region/regionDetail/checkedBookmark",
        data : {"boardNo" : boardNo},
        type : "get",

        success : function(result){

            if(result > 0){
                bookmarkState = "Y";
            }
        },
        
        error : function(req, status, error){
            console.log("북마크 체크 실패");
            console.log(req.responseText);
        }
    })
})

// 북마크 취소
const bookmarkBtn2 = document.getElementById("bookmark-btn2");

bookmarkBtn2.addEventListener("click", function(){

    $.ajax({

        url : contextPath + "/Region/regionDetail/uncheckedBookmark",
        data : {"boardNo" : boardNo},
        type : "get",

        success : function(result){

            if(result > 0){
                bookmarkState = "N";
            }
        },
        
        error : function(req, status, error){
            console.log("북마크 체크 해제 실패");
            console.log(req.responseText);
        }
    })
})