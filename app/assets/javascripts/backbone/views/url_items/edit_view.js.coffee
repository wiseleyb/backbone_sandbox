Icm.Views.UrlItems ||= {}

class Icm.Views.UrlItems.EditView extends Backbone.View
  template : JST["backbone/templates/url_items/edit"]

  events :
    "submit #edit-url_item" : "update"

  update : (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.save(null,
      success : (url_item) =>
        @model = url_item
        window.location.hash = "/#{@model.id}"
    )

  render : ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
