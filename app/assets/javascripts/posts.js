function toggleComments(button, target) {
  $(button).on("click", function(e){
    e.preventDefault()
    
    var $showCommentsButton = $(this)

    if ($showCommentsButton.text() === "Show Comments") {
      $showCommentsButton.text("Hide Comments")
    } else {
      $showCommentsButton.text("Show Comments")
    }

    $(target).toggleClass("hide")
  })
}
