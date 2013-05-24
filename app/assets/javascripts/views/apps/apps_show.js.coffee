class Teamsb.Views.AppsShow extends Backbone.View

  template: JST['apps/show']

  events:
    'click a.btm.install' : 'instalar'
    'click a.btm.desinstall' : 'desinstalar'

  initialize: ->
    @collection.on('sync', @render, this)
    @paso = new Teamsb.Collections.Appusers()

    @paso.fetch()
    @paso.on('sync', @render, this)

  render: ->
    $(@el).html(@template(apps: @collection , paso: @paso, id: @id))
    this

  instalar: (event) ->
    self = event.target
    event.preventDefault()
    if (confirm("Are you sure that you want to 'install' this App?"))
      attributes = app_id: parseInt($(self).attr('id')), accion: 'create'
      colection = new Teamsb.Collections.Appusers()
      colection.create attributes,
        success: ()->
          $(self).html('Uninstall')
          $(self).removeClass('install')
          $(self).addClass('desinstall')
          $(self).blur()

        error: ->
          $(self).html('Install')
          $(self).removeClass('desinstall')
          $(self).addClass('install')
          $(self).blur()

  desinstalar: (event) ->
    event.preventDefault()
    self = event.target
    if (confirm("Are you sure that you want to 'uninstall' this App?"))
      attributes = app_id: parseInt($(self).attr('id')), accion: 'delete'
      colection = new Teamsb.Collections.Appusers()
      colection.create attributes,
        success: ()->
          $(self).html('Install')
          $(self).removeClass('desinstall')
          $(self).addClass('install')
          $(self).blur()

        error: ->
          $(self).html('Uninstall')
          $(self).removeClass('install')
          $(self).addClass('desinstall')
          $(self).blur()