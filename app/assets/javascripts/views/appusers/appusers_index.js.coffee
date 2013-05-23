class Teamsb.Views.AppusersIndex extends Backbone.View

  template: JST['appusers/index']
  events:
    'click a.btm' : 'instalar'

  initialize: ->
    @collection.on('sync', @render, this)

  render: ->
    $(@el).html(@template(appusers: @collection))
    this

  instalar: (e) ->
    e.preventDefault()
    attributes = app_id: 1
    @collection.create attributes,
      success: (data)->
        console.log(data)

