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
  $('ul.nav a').click(func= (event) ->
      event.preventDefault()
      resetNav()
      $(this).parent().addClass('active')
  )

resetNav = ->
  console.log('reset')
  $('ul.nav li.active').removeClass('active')