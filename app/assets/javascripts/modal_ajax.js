// Default to JSON responses for remote calls

$.ajaxSetup({
  dataType: 'json'
});


// New User
// 
// 


(function() {
  $(document).ready(function() {
    console.log("signuper is ready");
    console.log($(".login_form"));

    $(document).bind("ajaxComplete", "form.login_form", function(event, xhr, settings) {
      console.log("ajaxComplete has fired");
    });



    // $(document).bind("ajaxSuccess", "form.login_form", function(event, xhr, settings) {
    //   var $error_container, $error_container_ul, $login_form;
    //   console.log("ajaxSuccess has fired");
    //   $login_form = $(event.data);
    //   $error_container = $("#error_explanation", $login_form);
    //   $error_container_ul = $("ul", $error_container);
    //   $("<p>").html(xhr.responseJSON.title + " savedddddd.").appendTo($login_form);
    //   if ($("li", $error_container_ul).length) {
    //     $("li", $error_container_ul).remove();
    //     return $error_container.hide();
    //   }
    // });
    // return $(document).bind("ajaxError", "form.login_form", function(event, jqxhr, settings, exception) {
    //   var $error_container, $error_container_ul, $login_form;
    //   console.log("ajaxError has fired");
    //   $login_form = $(event.data);
    //   $error_container = $("#error_explanation", $login_form);
    //   $error_container_ul = $("ul", $error_container);
    //   if ($error_container.is(":hidden")) {
    //     $error_container.show();
    //   }
    //   return $.each(jqxhr.responseJSON, function(index, message) {
    //     return $("<li>").html(message).appendTo($error_container_ul);
    //   });
    // });
  });
}).call(this);







// $(document).ready(function() {
//   console.log("document is ready for use");
//   console.log($('.login_form'));

//   $(document).bind("ajaxSuccess", "form.login_form"), function(event, xhr, settings) {
//     console.log("ajaxSuccess is firing");
//     $thing_form = event.data;
//   };


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
// });
