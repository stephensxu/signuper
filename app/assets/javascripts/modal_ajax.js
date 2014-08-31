// Default to JSON responses for remote calls

$.ajaxSetup({
  dataType: 'json'
});

// New User

$(document).ready(function() {
  console.log("document is ready for use");

  $(".login_form").on("ajax:complete", function(e, data, status, xhr) {
    console.log("ajax is success");
    console.log(data);
    console.log(status);
    console.log(xhr);
    $("#replaced").effect("highlight");
  });
});
