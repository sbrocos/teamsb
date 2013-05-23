class Teamsb.Views.AppsIndex extends Backbone.View

  template: JST['apps/index']


  render: ->
    $(@el).html(@template(apps: "Yes, we can!!!"))
    this
