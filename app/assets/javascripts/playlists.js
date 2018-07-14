$(function() {
    $('.landscape-img').hide();
    $('#playlist_type').change(function(){
        $(".input-type-b").val('');
        $(".input-type-a").val('');
        if($('#playlist_type').val() == 'LANDSCAPE') {
            console.log("landscape")
            $('.landscape-img').show();
            $('.potrait-img').hide();
        } else {
            console.log("landscape")
            $('.potrait-img').show();
            $('.landscape-img').hide();
        }
    });


    $('.input-type-b').attr('disabled', 'disabled');
    $("#playlist_template_1").click(function(){
      $('.input-type-b').attr('disabled', 'disabled');
      $('.input-type-a').removeAttr('disabled');
      $(".input-type-b").val('');
    });

    $("#playlist_template_2").click(function(){
      $('.input-type-a').attr('disabled', 'disabled');
      $('.input-type-b').removeAttr('disabled');
      $(".input-type-a").val('');
    });
});
