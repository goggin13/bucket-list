$(document).on("turbolinks:load", function () {
  $(".list li").click(function () {
    $(this).find(".item-info-hidden").toggle();
  });
});
