$(function(){
  $('.search_form').on("keyup",function(e){
    e.preventDefault();
    var input = $(this).val();
    console.log(input);

    $.ajax({
      type: "GET",
      url: "/", //動かすコントローラー
      data: { keyword: input },
      dataType: "json"
    })

    .done(function(projects){
      $(".project-wrapper__projects").empty();
    })
  });
});