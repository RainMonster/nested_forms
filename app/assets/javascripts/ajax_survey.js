$(document).ready(function() {

  $("#update_button").on('submit', function(e) {
    e.preventDefault();
    var title = $('div#edit_survey').text();
    console.log("you clicked the button");
    var data = $.trim(title);
    console.log(data);
    $.ajax({
      type: 'PUT',
      url: this.action,
      data: {"string": data}
    }).done(function(returnData){
      console.log(returnData)
    // $.post( "update", { title: data }, function() {
      console.log("finished ajax call");
      // $("#update_button").hide();
    });
  });

});
