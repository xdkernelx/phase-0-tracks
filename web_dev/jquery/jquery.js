console.log("This is working!")

$(document).ready(function(){

  $('.center').hover(function(){
    $(this).children('ul').stop(true,false,true).slideToggle(300);
  });

});