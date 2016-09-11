console.log("This is working!")

$(document).ready(function(){

  $('.nav-item').hover(function(){
    $(this).children('ul').stop(true,false,true).slideToggle(300);
  });

});