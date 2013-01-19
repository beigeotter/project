$('.add_activity').live('click', function() {
  $('.what_to_do').hide();
  $('.add_an_activity').show();
});


$('.recommend_activity').live('click', function() {
  $('.what_to_do').hide();
  $('.recommend_me_something').show();
});


$('.click-tag').live('click', function() {
  if ($(this).is('.selected')) {
    $(this).removeClass('selected');
  }
  else {
    $(this).addClass('selected');
  }
});