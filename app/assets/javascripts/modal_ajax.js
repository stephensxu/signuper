// Default to JSON responses for remote calls

$.ajaxSetup({
  dataType: 'json'
});


// New User
// 
// 


$(document).ready(function() {
    console.log("signuper is ready");
    console.log($(".login_form"));

    $(document).bind("ajaxSuccess", "form.login_form", function(event, xhr, settings) {
      console.log("ajaxSuccess has fired");
    });

    $(document).bind("ajaxComplete", "form.login_form", function(event, xhr, settings) {
      console.log("ajaxComplete global has fired");
    });

    $(document).bind("ajaxError", "form.login_form", function(event, jqxhr, settings, exception) {
      console.log("ajaxError global has fired");
    });

    $('form.login_form').on("ajax:error", function(event, xhr, status, error) {
      console.log("ajax:error has fired, bonded to login_form");
      console.log(xhr);
      console.log(xhr);
      var $error_message = xhr.responseJSON['errors'];
      console.log($error_message);
      $('#replaced').html($error_message);
    });
});
