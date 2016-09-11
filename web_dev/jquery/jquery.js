console.log("This is working!")

$(document).ready(function(){

  $('.nav-item').hover(function(){
    $(this).children('ul').stop(true,false,true).slideToggle(300);
  });

  $('responsive').click(function(){
    alert("You have clicked my picture. It does nothing.");
  });

});