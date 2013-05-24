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
