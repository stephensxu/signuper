// Default to JSON responses for remote calls

$.ajaxSetup({
  dataType: 'json'
});

// New User

$(document).ready(function() {
  console.log("document is ready for use");

  $(document).bind('ajax:complete', function(event, data) {
    console.log("ajax is success");
    console.log(xhr);
    console.log(data);
    console.log(status);
    $('').html(data.responseText);
  });
});
