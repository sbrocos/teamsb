class Teamsb.Routers.Appusers extends Backbone.Router
  routes:
    '': 'index'

  initialize: ->
    @collection = new Teamsb.Collections.Appusers()
    @collection.fetch()

  index: ->
    view = new Teamsb.Views.AppusersIndex(collection: @collection)
    $('#aux').html(view.render().el)

