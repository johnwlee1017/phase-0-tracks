$(document).ready(function() {
  $("li").hover(
    function() {
      $(this).append( $("<span> **</span>"));
    }, function() {
        $(this).find( "span:last").remove();
    }
  );

  $("li").click(function() {
    alert("You clicked an item");
  });
});