(function(){
    const thumbnail = document.getElementsByClassName("list-thumbnail");

    
    if(thumbnail.length > 0){

        
        const modal = document.querySelector('.modal');
        const modalImage = document.getElementById("modal-image");
        const modalClose = document.getElementById("modal-close");

        for(let th of thumbnail){
            th.addEventListener("click", function(){
                console.log("test");
                modalImage.setAttribute("src", th.getAttribute("src"));

                modal.classList.toggle('show');
            });
        }

        modalClose.addEventListener("click", function(){

            modal.classList.toggle('hide');

            setTimeout(function(){
                modal.classList.toggle('hide');

                modal.classList.toggle('show');
            }, 450);
        });

    }


})();