Icm.Views.Operations ||= {}

class Icm.Views.Operations.ShowView extends Backbone.View
  template: JST["backbone/templates/operations/show"]

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
