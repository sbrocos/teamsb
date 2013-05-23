class Teamsb.Views.AppsIndex extends Backbone.View

  template: JST['apps/index']

  initialize: ->
    @collection.on('sync', @render, this)

  render: ->
    $(@el).html(@template(apps: @collection))
    this
