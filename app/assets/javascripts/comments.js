// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/

function toggleComments(button, target) {
  $(button).on("click", function(){
    var $showCommentsButton = $(this)

    if ($showCommentsButton.text() === "Show Comments") {
      $showCommentsButton.text("Hide Comments")
    } else {
      $showCommentsButton.text("Show Comments")
    }

    $(target).toggleClass("hide")
  })
}
