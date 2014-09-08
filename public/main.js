$(document).ready(function(){
  
  // changes the background color of the top-nav buttons when you hover over one or the other and changes back when you leave
  $("#top_nav").find("li").hover(
    function() { $(this).addClass('hover_topnav') },
    function() { $(this).removeClass('hover_topnav') }
  );
  
  $("#create_plant").on("submit", function(e) {

    var validForm = true;
    
    var plantName = $("#plant_name").val();
    if (plantName === ""){
      $("#plant_name").next().show();
      valid_form = false;
    }
    if (valid_form === false){
      alert("INVALID FORM! Please input a plant name.");
      e.preventDefault();
    }
  });
  
})
