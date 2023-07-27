const region = document.getElementsByClassName("region");
const infoArea = document.getElementById("info-area");
let regionType = document.getElementsByName("region-type").values();

for(let i=0; i<region.length; i++){

    region[i].addEventListener("click", function(){

            // infoArea.style.visibility='initial';

        $.ajax({
            url : "main",
            data : {"region" : regionType},
            type : "post",

            
    
            success : function(list){

                infoArea.innerHTML="";

                for(let region of list){

                    const information = document.createElement("section");
                    information.id.add("information");

                    const info2 = document.createElement("div");
                    info2.id.add("info2");

                    information.append("info2");

                    const detailArea = document.createElement("section");
                    detailArea.classList.add("detail-area");


                    infoArea.append("information");



                }


            },

               error: function( request, status, error ){
                alert("실패..");
            }
        });
    })
}

