$(function() {
  $('div.deal-stars').stars();
});

$.fn.stars = function() {
  return $(this).each(function() {
    $(this).html($('<div />').width(Math.max(0, (Math.min(5, parseFloat($(this).html())))) * 16));
  });
}
