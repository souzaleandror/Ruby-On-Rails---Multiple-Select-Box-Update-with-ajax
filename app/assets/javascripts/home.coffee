$(document).ready ->
  $('#state_select').change ->
    $.ajax
      url: '/ajax/update_state'
      data: state_id: $('#state_select').val()
      dataType: 'script'
    return
  return


# in Javascript 
# $(document).ready(function() {
#  $('#state_user_select').change(function() {
#    $.ajax({
#      url: '/ajax/update_cities',
#      data: {
#        state_id: $('#state_user_select').val()
#      },
#      dataType: 'script'
#    });
#  });
#});