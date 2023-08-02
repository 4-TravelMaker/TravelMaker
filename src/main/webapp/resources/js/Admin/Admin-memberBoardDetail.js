// 관리자페이지 게시글 관리 상세조회 삭제
(function(){

    const deleteBtn = document.getElementById("delete-btn");

    deleteBtn.addEventListener("click",function(){

        let url = "delete";

        const params = new URL(location.href).searchParams;

        const no = "?no=" + params.get("no");

        const type = "&type=" + params.get("type");

        url += no + type;

        if(confirm("정말로 삭제 하시겠습니까?")){

            location.href = url;
        }
    })

})()