class Teamsb.Views.AppsMyapp extends Backbone.View

  template: JST['apps/myapp']

  events:
    'click a.btm.desinstall' : 'desinstalar'

  initialize: ->
    @collection.on('sync', @render, this)
    @paso = new Teamsb.Collections.Appusers()
    @paso.fetch()
    @paso.on('sync', @render, this)

  render: ->

    $(@el).html(@template(apps: @collection, paso: @paso))
    this

  desinstalar: (event) ->
    event.preventDefault()
    self = event.target
    if (confirm("Are you sure that you want to 'uninstall' this App?"))
      attributes = app_id: parseInt($(self).attr('id')), accion: 'delete'
      colection = new Teamsb.Collections.Appusers()
      colection.create attributes,
        success: ()->
          #reload a lo bruto, pq no se como se hace con backbone y solo el render
          #location.reload();
          $(@el).html(@template(apps: @collection, paso: @paso))
          this