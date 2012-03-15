Icm.Views.UrlItems ||= {}

class Icm.Views.UrlItems.UrlItemView extends Backbone.View
  template: JST["backbone/templates/url_items/url_item"]

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
