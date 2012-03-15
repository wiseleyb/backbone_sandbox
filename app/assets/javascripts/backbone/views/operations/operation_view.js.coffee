Icm.Views.Operations ||= {}

class Icm.Views.Operations.OperationView extends Backbone.View
  template: JST["backbone/templates/operations/operation"]

  events:
    "click .destroy" : "destroy"

  tagName: "tr"

  destroy: () ->
    @model.destroy()
    this.remove()

    return false

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
