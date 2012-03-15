Icm.Views.UrlItemComments ||= {}

class Icm.Views.UrlItemComments.EditView extends Backbone.View
  template : JST["backbone/templates/url_item_comments/edit"]

  events :
    "submit #edit-url_item_comment" : "update"

  update : (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.save(null,
      success : (url_item_comment) =>
        @model = url_item_comment
        window.location.hash = "/#{@model.id}"
    )

  render : ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
