
$(document).ready(function() {


    /*$(".likeuser").click(function (e) {

        e.preventDefault();
        var id = $(this).data(id);
        //alert(id.id)
        var profile = $(this).closest(".profile");
        $(profile).fadeOut(300, function() { $(this).remove(); });

    });*/

        $('.fa-heart-o').hover(function () {
            $(this).addClass('fa-heart');
            $(this).removeClass('fa-heart-o');
        }, function () {
            $(this).addClass('fa-heart-o');
            $(this).removeClass('fa-heart');
        });

    $(".likeuser").click(function (e) {

        e.preventDefault();
        var id = $(this).data("id");
        var html = $(this).parent().parent();
        var icon = $(this);
        //alert(id);

        jQuery.ajax({
            type: "POST",
            url: "php/likeuser.php",
            dataType:"json",
            data:{id:id},
            success:function(response){
                console.log(response);
                //console.log(html);
                //$(html).addClass("bg-success");
                //$(icon).addClass("hidden");
                Push.create("Óha, "+response.username+"!", {
      				    body: "You have "+response.status+" "+response.likedusersname,
      				    icon: 'icon.png',
      				    timeout: 4000,
      				    onClick: function () {
      				        window.focus();
      				        this.close();
				    }
				});
            },
            error:function (xhr, ajaxOptions, thrownError){
                alert(thrownError);
            }
        });
    });

});
