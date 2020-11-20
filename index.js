// トップへ戻るボタン
    $("#topBtn").hide();
    $(window).on("scroll", function() {
        if ($(this).scrollTop() > 100) {
            $("#topBtn").fadeIn("fast");
        } else {
            $("#topBtn").fadeOut("fast");
        }
    });
    
    $('#topBtn').click(function () {
        $('body,html').animate({
        scrollTop: 0
        }, 400);
        return false;
    });
    
