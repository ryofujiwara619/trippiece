$(document).on('turbolinks:load', function(){
  $(".top-wrapper__middle--slide--changeBtns--changeBtn").click(function(){
    var $displaySlide = $(".active");
    $displaySlide.removeClass("active");
    if($(this).hasClass("next")){
      $displaySlide.next().addClass("active");
    }else{
      $displaySlide.prev().addClass("active");
    }
  });
});