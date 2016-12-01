
$(document).ready(function() {

    $(".matchbutton").click(function (e) {

        e.preventDefault();
        var id = $(this).data("id");
        //alert(id);
        
        jQuery.ajax({
            type: "POST", 
            url: "php/likeuser.php", 
            dataType:"json", 
            data:{id:id}, 
            success:function(response){
                console.log(response);
            },
            error:function (xhr, ajaxOptions, thrownError){
                alert(thrownError);
            }
        });
    });

});