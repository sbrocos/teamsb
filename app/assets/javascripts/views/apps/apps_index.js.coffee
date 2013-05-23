class Teamsb.Views.AppsIndex extends Backbone.View

  template: JST['apps/index']

  events:
    'click a.btm.install' : 'instalar'
    'click a.btm.desinstall' : 'desinstalar'

  initialize: ->
    @collection.on('sync', @render, this)
    @paso = new Teamsb.Collections.Appusers()
    @paso.fetch()
    @paso.on('sync', @render, this)

  render: ->

    $(@el).html(@template(apps: @collection, paso: @paso))
    this

  instalar: (event) ->
    self = event.target
    event.preventDefault()
    if (confirm("Are you sure that you want to 'install' this App?"))
      attributes = app_id: parseInt($(self).attr('id')), action: 'create'
      colection = new Teamsb.Collections.Appusers()
      colection.create attributes,
        success: ()->
          $(self).html('Uninstall')
          $(self).removeClass('install')
          $(self).addClass('desinstall')

        error: ->
          $(self).html('Install')
          $(self).removeClass('desinstall')
          $(self).addClass('install')

  desinstalar: (event) ->
    event.preventDefault()
    self = event.target
    if (confirm("Are you sure that you want to 'uninstall' this App?"))
      attributes = app_id: parseInt($(self).attr('id')), action: 'delete'
      colection = new Teamsb.Collections.Appusers()
      colection.create attributes,
        success: ()->
          $(self).html('Install')
          $(self).removeClass('desinstall')
          $(self).addClass('install')

        error: ->
          $(self).html('Uninstall')
          $(self).removeClass('install')
          $(self).addClass('desinstall')