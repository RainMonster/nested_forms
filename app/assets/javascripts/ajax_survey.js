$(document).ready(function() {

  $("#update_button").on('submit', function(e) {
    e.preventDefault();
    var title = $('div#edit_survey').text();
    console.log("you clicked the button");
    var data = $.trim(title);
    console.log(this.action);
    console.log(data);
    // $.ajax({
    //   type: 'PUT',
    //   url: 'update/7',
    //   data: data
    // }).done(function(){
    $.post( "update", { title: data }, function() {
      console.log("finished ajax call");
      $("#update_button").hide();
    });
  });

});
