$(document).on('turbolinks:load', function(){
  // $(".top-wrapper__middle--slide--changeBtns--changeBtn").click(function(){
  //   console.log("ああ")
  //   var $displaySlide = $(".active");
  //   $displaySlide.removeClass("active");
  //   if($(this).hasClass("next")){
  //     $displaySlide.next().addClass("active");
  //   }else{
  //     $displaySlide.prev().addClass("active");
  //   }
  // });
  $('.slider').slick({
    accessibility: true,
    autoplay: true,
    autoplaySpeed: 5000,
    dots: true,
    fade: true,
  });
});