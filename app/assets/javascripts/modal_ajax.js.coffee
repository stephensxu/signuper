// Default to JSON responses for remote calls

$.ajaxSetup({
  dataType: 'json'
});

// New User
// 
$(document).ready ->
  console.log("document is ready")

  $(document).bind "ajaxSuccess", "form.thing_form", (event, xhr, settings) ->
    console.log("ajaxSuccess has fired")

$(document).ready(function() {
  console.log("document is ready for use");
  console.log($('.login_form'));

  $(document).bind("ajaxSuccess", "form.login_form"), function(event, xhr, settings) {
    console.log("ajaxSuccess is firing");
    $thing_form = event.data;
  };


 //  $(document).bind("ajaxSend", "form.login_form", function(event, xhr, settings) {
 //    console.log("ajaxSend is fired");
 //  }).bind("ajaxComplete", function() {
 //    console.log(".ajaxComplete is fired");
 //  }).bind("ajaxError", function() {
 //    console.log(".ajaxError is fired");
 //  }).bind("ajaxStart", function() {
 //    console.log(".ajaxStart is fired");
 //  }).bind("ajaxStop", function() {
 //    console.log(".ajaxStop is fired");
 //  }).bind("ajaxSuccess", function() {
 //    console.log(".ajaxSuccess is fired");
 //  });

 //  $(".login_form").on("ajax:before", function(event, data, status, xhr) {
 //    console.log("ajax:before is fired");
 //  });

 //  $(".login_form").on("ajax:beforeSend", function(event, data, status, xhr) {
 //    console.log("ajax:beforeSend is fired");
 //  });

 //  $(".login_form").on("ajax:send", function(event, data, status, xhr) {
 //    console.log("ajax:send is fired");
 //  });

 //  $(".login_form").on("ajax:success", function(event, data, status, xhr) {
 //    console.log("ajax:success is fired");
 //  });

 //  $(".login_form").on("ajax:error", function(event, data, status, xhr) {
 //    console.log("ajax:error is fired");
 //  });

 //  $(".login_form").on("ajax:complete", function(event, data, status, xhr) {
 //    console.log("ajax:complete is fired");
 //  });

 //  $(".login_form").on("ajax:aborted:required", function(event, data, status, xhr) {
 //    console.log("ajax:aborted:required is fired");
 //  });

 //  $(".login_form").on("ajax:aborted:file", function(event, data, status, xhr) {
 //    console.log("ajax:aborted:file is fired");
 //  });


 // $(document).bind("ajaxSend", function(){
 //   $("#replaced").hide();
 //  }).bind("ajaxComplete", function(){
 //   $("#replaced").hide();
 //  });
});
