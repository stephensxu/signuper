// Default to JSON responses for remote calls

$.ajaxSetup({
  dataType: 'json'
});


// New User
// 

$(document).ready(function() {
  console.log("signuper is ready");
  console.log($(".login_form"));

  $(document).bind("ajaxComplete", "form.login_form", function(event, xhr, settings) {
    console.log("ajaxComplete global has fired");
  });

  $(document).bind("ajaxSuccess", "form.login_form", function(event, xhr, data, status) {
    console.log("ajaxSuccess has fired");
    var redirect_url = xhr.getResponseHeader('location');
    console.log(redirect_url);
    window.location.replace(redirect_url);
  });

  $('form.login_form').on("ajax:error", function(event, xhr, status, error) {
    console.log("ajax:error has fired, bonded to login_form");
    var $error_message = xhr.responseJSON['errors'];
    console.log($error_message);
    $('#login_error').show();
    $('#login_error').html($error_message);
  });
});
