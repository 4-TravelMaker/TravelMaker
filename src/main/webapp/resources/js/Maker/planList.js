const deleteBtn = document.getElementsByClassName("delete-image");

for(let i = 0; i < deleteBtn.length; i++) {
    
    deleteBtn[i].addEventListener("click", function(){
        
        if(confirm("여행 계획을 삭제하시겠습니까?")) {
            
            const planNoValue = document.getElementsByClassName("planNoValue")[i];

            $.ajax({

                url : contextPath + "/planList/delete",
                data : {"planNo" : planNoValue.value},
                succeess : function(result) {

                    if(result > 0) {
                        alert("여행 계획이 삭제되었습니다.");
                        location.reload();
                        
                    } else {
                        alert("여행 계획 삭제에 실패했습니다.");
                    }
                },
                error : function(req, status, error){
                    console.log(req.responseText);
                }
            });
        }
    })
}