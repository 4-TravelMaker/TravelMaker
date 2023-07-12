$("#input-content").on("input", function(){

    let length = $(this).val().length;
    $("#counter").html(length);
    
    if( length > 1000 ) {
        const str = $(this).val();
        $(this).val(str.substring(0, 1000));
        $("#counter").text(1000);
    }
})

function counsellingValidate() {

    if($("#input-title").val().trim() == '') {
        alert("제목을 입력해주세요.");
        $("#input-title").val('');
        $("#input-title").focus();
        return false;
    }

    if($("#input-content").val().trim() == '') {
        alert("문의 내용을 입력해주세요.");
        $("#input-content").val('');
        $("#input-content").focus();
        return false;
    }

    return true;
}