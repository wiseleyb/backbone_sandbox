Icm.Views.UrlItemComments ||= {}

class Icm.Views.UrlItemComments.NewView extends Backbone.View
  template: JST["backbone/templates/url_item_comments/new"]

  events:
    "submit #new-url_item_comment": "save"

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
      success: (url_item_comment) =>
        @model = url_item_comment
        window.location.hash = "/#{@model.id}"

      error: (url_item_comment, jqXHR) =>
        @model.set({errors: $.parseJSON(jqXHR.responseText)})
    )

  render: ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
