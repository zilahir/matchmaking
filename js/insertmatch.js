
$(document).ready(function() {

    $(".matchbutton").click(function (e) {

        e.preventDefault();
        var id = $(this).data("id");
        var html = $(this).parent().parent();
        //alert(id);
        
        jQuery.ajax({
            type: "POST", 
            url: "php/likeuser.php", 
            dataType:"json", 
            data:{id:id}, 
            success:function(response){
                //console.log(response);
                console.log(html); 
                $(html).addClass("bg-success");
            },
            error:function (xhr, ajaxOptions, thrownError){
                alert(thrownError);
            }
        });
    });

});