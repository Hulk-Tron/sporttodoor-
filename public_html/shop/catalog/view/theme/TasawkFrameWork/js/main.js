/* global src */

$(document).ready(function () {
    
    
new WOW().init();

jQuery(document).ready(function(){
    // This button will increment the value
    $('.qtyplus').click(function(e){
        // Stop acting like a button
        e.preventDefault();
        // Get the field name
        fieldName = $(this).attr('field');
        // Get its current value
        var currentVal = parseInt($('input[name='+fieldName+']').val());
        // If is not undefined
        if (!isNaN(currentVal)) {
            // Increment
            $('input[name='+fieldName+']').val(currentVal + 1);
        } else {
            // Otherwise put a 0 there
            $('input[name='+fieldName+']').val(0);
        }
    });
    // This button will decrement the value till 0
    $(".qtyminus").click(function(e) {
        // Stop acting like a button
        e.preventDefault();
        // Get the field name
        fieldName = $(this).attr('field');
        // Get its current value
        var currentVal = parseInt($('input[name='+fieldName+']').val());
        // If it isn't undefined or its greater than 0
        if (!isNaN(currentVal) && currentVal > 0) {
            // Decrement one
            $('input[name='+fieldName+']').val(currentVal - 1);
        } else {
            // Otherwise put a 0 there
            $('input[name='+fieldName+']').val(0);
        }
    });
});


$(document).ready(function () {
    // $(".btn-select").each(function (e) {
    //     var value = $(this).find("ul li.selected").html();
    //     if (value != undefined) {
    //         $(this).find(".btn-select-input").val(value);
    //         $(this).find(".btn-select-value").html(value);
    //     }
    // });
$('select').selectpicker({
  width: '270px',
  style: 'btn btn-xs btn-default'
  });

// quantity
                $input = $('.quantity');

                $('.quantitybtn').on('click',function(){
                     $val = $input.val();
                    if ($(this).hasClass('btn-minuse')) {
                        var currentVal = parseInt($input.val());
                    if (!isNaN(currentVal) && currentVal > 0) {
                        $input.val(currentVal - 1);
                    }
                    } else {
                        $input.val(parseInt($val)+1);
                    }
                });


});

$(document).on('click', '.btn-select', function (e) {
    e.preventDefault();
    var ul = $(this).find("ul");
    if ($(this).hasClass("active")) {
        if (ul.find("li").is(e.target)) {
            var target = $(e.target);
            target.addClass("selected").siblings().removeClass("selected");
            var value = target.html();
            $(this).find(".btn-select-input").val(value);
            $(this).find(".btn-select-value").html(value);
        }
        ul.hide();
        $(this).removeClass("active");
    }
    else {
        $('.btn-select').not(this).each(function () {
            $(this).removeClass("active").find("ul").hide();
        });
        ul.slideDown(300);
        $(this).addClass("active");
    }
});

$(document).on('click', function (e) {
    var target = $(e.target).closest(".btn-select");
    if (!target.length) {
        $(".btn-select").removeClass("active").find("ul").hide();
    }
});


          $("#zoom_09").elevateZoom({
            zoomType    : "lens", 
            lensShape : "round", 
            lensSize : 200,
            gallery : "gallery_09",
            galleryActiveClass: "active"
                }); 
            

});