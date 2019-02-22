$("#myCarousel > div:gt(0)").hide();

setInterval(function() {
  $('#myCarousel > div:first')
    .fadeOut(5000)
    .next()
    .fadeIn(500)
    .end()
    .appendTo('#myCarousel');
}, 1000);