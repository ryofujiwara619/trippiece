$(document).on('turbolinks:load', function(){
  $(".fa-plane").on('click', function(e) {
  $("#drop-modal-wrapper").fadeIn();
});
  $(document).on('click', function(e){
    if( !$(e.target).closest('.fa-plane').length ){
        $("#drop-modal-wrapper").fadeOut();
    }
  });

  $("#mylist").on('click', function(e) {
  $("#mylist-modal-wrapper").fadeIn();
});
  $(document).on('click', function(e){
    if( !$(e.target).closest('#mylist').length ){
        $("#mylist-modal-wrapper").fadeOut();
    }
  });
});

// $(function(){
//   $(".fa-plane").hover(function(){
//     $("#drop-modal-wrapper").fadeIn();
//   },function(){
//     $("#drop-modal-wrapper").fadeOut();
//   });
// });
