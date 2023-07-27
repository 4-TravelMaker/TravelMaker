const region = document.getElementsByClassName("region");
const infoArea = document.getElementById("info-area");

for(let i=0; i<region.length; i++){

    region[i].addEventListener("click", function(){

        $.ajax({
            url : contextPath + "/Region/main",
            data : {"region" : region},
            type : "post",
            dataType : "JSON",
    
            success : function(list){
                alert("성공");
    
            },
            error:function(){
                alert("실패...");
            }
    
        });

    })
   
}

