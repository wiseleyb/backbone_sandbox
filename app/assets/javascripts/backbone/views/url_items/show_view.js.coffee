Icm.Views.UrlItems ||= {}

class Icm.Views.UrlItems.ShowView extends Backbone.View
  template: JST["backbone/templates/url_items/show"]

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
