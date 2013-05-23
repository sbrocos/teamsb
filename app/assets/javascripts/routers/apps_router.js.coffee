class Teamsb.Routers.Apps extends Backbone.Router
  routes:
    '': 'index'


  index: ->
    view = new Teamsb.Views.AppsIndex()
    $('#Appcontenido').html(view.render().el)