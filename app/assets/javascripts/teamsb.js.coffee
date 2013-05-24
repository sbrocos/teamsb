window.Teamsb =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    new Teamsb.Routers.Appusers
    Backbone.history.start()

$(document).ready ->
  Teamsb.init()
  $('.nav a').click(func= ->
      $(this).addClass('active')
  )






resetNav = ->
  $('.nav a').removeClass('active')