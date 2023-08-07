let deleteBtn = document.getElementsByClassName("delete-image");
    
$(document).on("click", ".delete-image", function(e){
    
    if(confirm("여행 계획을 삭제하시겠습니까?")) {
        
        const planNoValue = e.target.nextElementSibling;

        $.ajax({

            url : contextPath + "/planList/delete",
            data : {"planNo" : planNoValue.value},
            success : function(result) {

                if(result > 0) {
                    alert("여행 계획이 삭제되었습니다.");
                    selectPlanList();
                    
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

function selectPlanList() {

    $.ajax({

        url : contextPath + "/planList/selectPlanList",
        data : {"memberNo" : loginMemberNo},
        type : "GET",
        dataType : "JSON",
        success : function(planList) {
            
            const content = document.getElementsByClassName("content")[0];
            const myPlan = document.getElementsByClassName("myPlan");

            while(myPlan[0] != null) {
                myPlan[0].remove(myPlan[0]);
            }

            for(let plan of planList) {
                
                const myPlan2 = document.createElement("div");
                myPlan2.classList.add("myPlan");

                const planImg = document.createElement("div");
                planImg.classList.add("planImg");
                
                const a = document.createElement("a");
                a.setAttribute("href", contextPath + "/makePlan?mode=update&no=" + plan.planNo);

                const placeImage2 = document.createElement("img");

                if(plan.thumbnail != null) {
                    placeImage2.setAttribute("src", plan.thumbnail);
                    placeImage2.classList.add("place-image2");

                } else {
                    placeImage2.setAttribute("src", contextPath + "/resources/images/logo.png");
                }

                const deleteImage = document.createElement("span");
                deleteImage.classList.add("delete-image");
                deleteImage.innerHTML = "&times;";

                const planNoValue = document.createElement("input");
                planNoValue.setAttribute("type", "hidden");
                planNoValue.classList.add("planNoValue");
                planNoValue.setAttribute("value", plan.planNo);

                a.append(placeImage2);
                planImg.append(a, deleteImage, planNoValue);

                const planProfile = document.createElement("div");
                planProfile.classList.add("planProfile");

                const profileImg = document.createElement("img");

                if(loginMemberProfile != null) {
                    profileImg.setAttribute("src", contextPath + loginMemberProfile);
                    profileImg.classList.add("profile-img");

                } else {
                    profileImg.setAttribute("src", contextPath + "/resources/images/Admin/admin-profile.jpg");
                    profileImg.classList.add("profile-img");
                }

                planProfile.append(profileImg);

                const planTitle = document.createElement("div");
                planTitle.classList.add("planTitle");

                const planTitleHref = document.createElement("a");
                planTitleHref.setAttribute("href", contextPath + "/makePlan?mode=update&no=" + plan.planNo);
                planTitleHref.innerHTML = plan.planTitle;

                planTitle.append(planTitleHref);

                myPlan2.append(planImg, planProfile, planTitle);

                content.append(myPlan2);

                deleteBtn = document.getElementsByClassName("delete-image");
            }
            
        },
        error : function(req, status, error){
            console.log(req.responseText);
        }
    });


}