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
      attributes = app_id: parseInt($(self).attr('id')), accion: 'create'
      colection = new Teamsb.Collections.Appusers()
      colection.create attributes,
        success: ()->
          $(self).html('Uninstall')
          $(self).removeClass('install')
          $(self).addClass('desinstall')

        error: ->
          #redirect to signin page, but I don't know how
          location('/signin');

