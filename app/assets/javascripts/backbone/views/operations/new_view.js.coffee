Icm.Views.Operations ||= {}

class Icm.Views.Operations.NewView extends Backbone.View
  template: JST["backbone/templates/operations/new"]

  events:
    "submit #new-operation": "save"

  constructor: (options) ->
    super(options)
    @model = new @collection.model()

    @model.bind("change:errors", () =>
      this.render()
    )

  save: (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.unset("errors")

    @collection.create(@model.toJSON(),
      success: (operation) =>
        @model = operation
        window.location.hash = "/#{@model.id}"

      error: (operation, jqXHR) =>
        @model.set({errors: $.parseJSON(jqXHR.responseText)})
    )

  render: ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
