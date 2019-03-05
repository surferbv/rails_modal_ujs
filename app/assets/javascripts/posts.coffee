# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ()->
  $("form.new_post").on "ajax:success", (event, data, status, xhr) ->
    $('#new-post-modal').modal('hide')
    $('table tbody').load(document.URL +  ' table tbody')
    $(this).removeData("form.new_post")
    # $('table tbody').append('<tr><td>' + data.title + '</td><td>' + data.content + '</td></tr>') # NOTE that data is undefiend 
