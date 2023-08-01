// 미리보기 관련 요소 얻어오기
const inputImage = document.getElementsByClassName("inputImage");
const preview = document.getElementsByClassName("preview");
const deleteImage = document.getElementsByClassName("delete-image");

// 게시글 수정 시 삭제된 이미지의 레벨(위치)를 저장할 input 요소
const deleteList = document.getElementById("deleteList");

// 게시글 수정 시 삭제된 이미지의 레벨(위치)를 기록해둘 Set 생성
const deleteSet = new Set(); 

for(let i = 0; i< inputImage.length; i++){

    // 파일이 선택 되었을 때
    inputImage[i].addEventListener("change", function(){
        
        if(this.files[0] != undefined){

            const reader = new FileReader(); // <- 선택된 파일을 읽을 객체
            reader.readAsDataURL(this.files[0]);

            reader.onload = function(e){

                preview[i].setAttribute("src", e.target.result);

                //이미지가 성공적으로 불러와졌을 때
                // deleteSet에서 해당 레벨을 제거(삭제 목록에서 제외)
                deleteSet.delete(i);
            }
        }else{
            preview[i].removeAttribute("src");
        }
    });

    // 미리보기 석제 버튼이 클릭 되었을 때의 동작
    deleteImage[i].addEventListener("click",function(){

        // 미리보기가 존재하는 경우에만 x버튼 동작
        if(preview[i].getAttribute("src") != ""){

            preview[i].removeAttribute("src");

            inputImage[i].value = "";

            deleteSet.add(i);
        }
    });
}

// 게시글 작성 유효성 검사
function writeValidate(){
    const boardTitle = document.getElementsByName("boardTitle")[0];
    const boardContent = document.querySelector("[name='boardContent']");

    
    if(boardTitle.value.trim().length == 0){
        alert("제목을 입력해주세요.");
        boardTitle.value = "";
        boardTitle.focus();
        return false;
    }

    if(boardContent.value.trim().length == 0){
        alert("내용을 입력해주세요.");
        boardContent.value = "";
        boardContent.focus();
        return false;
    }

    deleteList.value = Array.from(deleteSet);

    return true;

}