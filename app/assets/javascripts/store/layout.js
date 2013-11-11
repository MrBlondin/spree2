$(document).ready(function () {
        $("#taxon").hide();
        $("#search-bar").find("input[type=submit]").attr("value","");
        $(".paymethods img").hover(function () {
            $(this).removeClass("desaturate")
        }, function () {
            $(this).addClass("desaturate");
        });
    }
)