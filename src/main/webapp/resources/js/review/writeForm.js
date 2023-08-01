// 미리보기 관련 요소 모두 얻어오기
const inputImage = document.getElementsByClassName("inputImage");
const preview = document.getElementsByClassName("preview");
const deleteImage = document.getElementsByClassName("delete-image");

const deleteList = document.getElementById("deleteList");

const deleteSet = new Set();

for(let i = 0; i < inputImage.length; i++) {
    
    // 파일이 선택 되었을 때
    inputImage[i].addEventListener("change", function(){
        
        if(this.files[0] != undefined) { // 파일이 선택되었을 때
            
            const reader = new FileReader(); // 선택된 파일을 읽을 객체 생성

            reader.readAsDataURL(this.files[0]);
            // 지정된 파일을 읽음 -> result에 저장(URL 포함) -> URL을 이용해서 이미지 볼 수 있음

            reader.onload = function(e){ // reader가 파일을 읽어온 경우
                // e.target == reader
                // e.target.result == 읽어들인 이미지의 URL
                // preview[i] == 파일이 선택된 input 태그와 인접한 preview 이미지 태그

                preview[i].setAttribute("src", e.target.result);

                // 이미지가 성공적으로 불러와졌을 때
                // deleteSet에서 해당 레벨을 제거(삭제 목록에서 제외)
                deleteSet.delete(i);
            }

        } else { // 파일이 선택되지 않았을 때 (취소)
            preview[i].removeAttribute("src"); // src 속성 제거
        }

    });

    // 미리보기 삭제 버튼(x)이 클릭 되었을 때의 동작
    deleteImage[i].addEventListener("click", function(){

        // 미리보기가 존재하는 경우에만 (이전에 추가된 이미지가 있을 때만) x버튼 동작
        if(preview[i].getAttribute("src") != '') {
            // 미리보기 삭제
            preview[i].removeAttribute("src");
            
            // input의 값을 "" 만들기
            inputImage[0].value = '';

            // deleteList에 삭제된 이미지 레벨(i) 추가
            deleteSet.add(i);
        }

    })
}

// 게시글 작성 유효성 검사
function writeValidate() {

    const boardTitle = document.getElementById("text-title");
    const boardContent = document.querySelector("[name='boardContent']");

    if(boardTitle.value.trim().length == 0) {
        alert("제목을 입력해주세요.");
        boardTitle.value = "";
        boardTitle.focus();
        return false;
    }

    if(boardContent.value.trim().length == 0) {
        alert("내용을 입력해주세요.");
        boardContent.value = "";
        boardContent.focus();
        return false;
    }

    // 제목, 내용이 유효한 경우
    // deleteList(input 태그)에 deleteSet(삭제된 이미지 레벨)을 추가
    // -> JS 배열 특징 사용
    // --> JS배열을 HTML 요소 또는 console에 출력하게 되는 경우 1,2,3 같은 문자열로 출력됨
    //     (배열 기호가 벗겨짐)

    // * Set -> Array로 변경 -> deleteList.value에 대입
    
    // Array.from(유사배열 | 컬렉션) : 유사배열 | 컬렉션을 배열로 변환해서 반환
    deleteList.value = Array.from(deleteSet);

    return true;

}


// 글자수 제한
const content = document.getElementById("boardContent");
const counter = document.getElementById("counter");

content.addEventListener("input",function(){

    let length = content.value.length;
    counter.innerHTML = length;

    const str = content.value;

    content.value = str.substring(0,1000);
})

