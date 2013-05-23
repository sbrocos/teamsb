class Teamsb.Routers.Appusers extends Backbone.Router
  routes:
    '': 'index'
    'app/:id': 'show'
    'myapps' : 'myapps'

  initialize: ->
    @collection = new Teamsb.Collections.Appusers()
    @collection.fetch()
    @coll = new Teamsb.Collections.Apps()
    @coll.fetch()

  index: ->
    view = new Teamsb.Views.AppsIndex(collection: @coll)
    $('#Appcontenido').html(view.render().el)

  show: (id) ->
    view = new Teamsb.Views.AppsShow(collection: @coll)
    $('#Appcontenido').html(view.render().el)

  myapps: ->
    view = new Teamsb.Views.AppsMyapp(collection: @coll)
    $('#Appcontenido').html(view.render().el)


