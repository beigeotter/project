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


$('.recommend_me').live('click', function() {
  if ($('.click-tag').is('.selected')) {
    var list = "";
    $('.click-tag.selected').each(function() {
      list = list + $(this).attr('id') + ","
    });
    $.getJSON('/activities/search?tags=' + list, function(data) {
      $('.recommend_me_something').hide();
      $('.recommended').show();
      $('.recommended h1').remove();
      $('.recommended').append("<h1>" + data.description + "</h1>");
    });
  }
  else {
    alert ("No tags selected");
  }
});