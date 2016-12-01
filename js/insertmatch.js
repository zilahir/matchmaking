
$(document).ready(function() {

    $(".matchbutton").click(function (e) {

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
                //console.log(response);
                //console.log(html); 
                $(html).addClass("bg-success");
                $(icon).addClass("hidden");
                Push.create("Hello world!", {
				    body: "How's it hangin'?",
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