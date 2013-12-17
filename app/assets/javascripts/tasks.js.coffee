
$(document).on 'ready page:load', ->
  $('#task_deadline').datepicker({
    format: "yyyy-mm-dd",
    autoclose: true
  });

$(document).on 'ready page:load', ->
  $(".checkable").click ->
    $(this).parents('form').submit();