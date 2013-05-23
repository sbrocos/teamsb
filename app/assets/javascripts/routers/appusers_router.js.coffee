class Teamsb.Routers.Appusers extends Backbone.Router
  routes:
    '': 'index'

  initialize: ->
    @collection = new Teamsb.Collections.Appusers()
    @collection.fetch()
    @coll = new Teamsb.Collections.Apps()
    @coll.fetch()

  index: ->
    view = new Teamsb.Views.AppsIndex(collection: @coll)
    $('#Appcontenido').html(view.render().el)


