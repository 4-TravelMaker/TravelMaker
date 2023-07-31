// 상세 조회 - 목록으로 버튼
(function(){
    const goToListBtn = document.getElementById("go-to-list-btn");

    if(goToListBtn != null){

        goToListBtn.addEventListener("click", function(){

            const pathname = location.pathname;

            let url = pathname.substring(0, pathname.indexOf("/", 1));

            url += "/admin/OneOnOneInquiry/list?";

            const params = new URL(location.href).searchParams;

            const type = "type=" + params.get("type");

            let cp;

            if(params.get("cp") != ""){
                cp = "cp=" + params.get("cp");

            } else{
                cp = "cp=1";
            }

            url += type + "&" + cp;

            if(params.get("query2") != null){
                const query2 = "&query2=" + params.get("query2");

                url += query2;
            }

            location.href = url;
        })
    }
})();

// 검색 유효성 검사
function searchValidate(){

    const query2 = document.getElementById("member-search");

    if(query2.value.trim().length == 0){
        query2.value = "";
        query2.focus();

        return false;
    }

    return true;
}