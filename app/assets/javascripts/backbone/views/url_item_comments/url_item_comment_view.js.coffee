Icm.Views.UrlItemComments ||= {}

class Icm.Views.UrlItemComments.UrlItemCommentView extends Backbone.View
  template: JST["backbone/templates/url_item_comments/url_item_comment"]

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
