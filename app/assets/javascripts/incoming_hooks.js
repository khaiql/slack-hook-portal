$(function () {
  $('#test-btn').on('click', function (evt) {
    debugger
    evt.preventDefault();
    url = $('#test-btn').data('url');
    $.get(url, function (data) {
      debugger
      showMessage(data.text);
    });
  });
});

var showMessage = function (content) {
  $('.alert-box').hide();
  $('.alert-box #message-container').text(content);
  $('.alert-box').show();
};