// Default to JSON responses for remote calls

$.ajaxSetup({
  dataType: 'json'
});

// New User

$(document).ready(function() {

  $(document).on('ajax:success', function(e) {
    console.log("ajax is success");
  });
});
