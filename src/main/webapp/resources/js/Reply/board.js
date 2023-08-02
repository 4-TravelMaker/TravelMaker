(function(){
    const goToListBtn = document.getElementById("goToListBtn");

    if(goToListBtn != null){

        goToListBtn.addEventListener("click", function(){

            const pathname = location.pathname;

            let url = pathname.substring(0, pathname.indexOf("/",1));

            url +="/boardNotice/list?";

            const params = new URL(location.href).searchParams;

            const type = "type="+params.get("type");
            let cp;

            if(params.get("cp") !=null){
                cp = "cp=" + params.get("cp");
            }else{
                cp = "cp=1";
            }

            url += type + "&" + cp;

            if(params.get("key") != null){
                const key = "&key=" + params.get("key");
                const query = "&query=" + params.get("query");

                url += key + query;
            }

            location.href = url;

        })
    }
})();


(function(){

    const deleteBtn = document.getElementById("deleteBtn");

    if(deleteBtn != null){

        deleteBtn.addEventListener("click", function(){

            let url = "delete";

            const params = new URL(location.href).searchParams;

            const no = "?no=" + params.get("no");

            const type = "&type=" + params.get("type");

            url += no + type;

            if(confirm("정말로 삭제 하시겠습니까?")){

                location.href = url;
                
            }
        })
    }
})()