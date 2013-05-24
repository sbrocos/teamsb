class Teamsb.Routers.Apps extends Backbone.Router
  routes:
    '': 'index'

  initialize: ->
    @collection = new Teamsb.Collections.Apps()
    @collection.fetch()

  index: ->
    view = new Teamsb.Views.AppsIndex(collection: @collection)
    $('#Appcontenido').html(view.render().el)