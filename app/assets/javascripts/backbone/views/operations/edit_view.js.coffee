Icm.Views.Operations ||= {}

class Icm.Views.Operations.EditView extends Backbone.View
  template : JST["backbone/templates/operations/edit"]

  events :
    "submit #edit-operation" : "update"

  update : (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.save(null,
      success : (operation) =>
        @model = operation
        window.location.hash = "/#{@model.id}"
    )

  render : ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
