$(document).ready(function(){
  
  // changes the background color of the top-nav buttons when you hover over one or the other and changes back when you leave
  $("#top_nav").find("li").hover(
    function() { $(this).addClass('hover_topnav') },
    function() { $(this).removeClass('hover_topnav') }
  );
  
})