Icm.Views.UrlItems ||= {}

class Icm.Views.UrlItems.NewView extends Backbone.View
  template: JST["backbone/templates/url_items/new"]

  events:
    "submit #new-url_item": "save"

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
      success: (url_item) =>
        @model = url_item
        window.location.hash = "/#{@model.id}"

      error: (url_item, jqXHR) =>
        @model.set({errors: $.parseJSON(jqXHR.responseText)})
    )

  render: ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
