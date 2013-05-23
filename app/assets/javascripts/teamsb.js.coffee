window.Teamsb =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    new Teamsb.Routers.Apps
    Backbone.history.start()

$(document).ready ->
  Teamsb.init()
