class Teamsb.Views.AppusersIndex extends Backbone.View

  template: JST['appusers/index']

  initialize: ->
    @collection.on('sync', @render, this)

  render: ->
    $(@el).html(@template(appusers: @collection))
    this
