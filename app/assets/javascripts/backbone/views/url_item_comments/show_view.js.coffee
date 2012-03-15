Icm.Views.UrlItemComments ||= {}

class Icm.Views.UrlItemComments.ShowView extends Backbone.View
  template: JST["backbone/templates/url_item_comments/show"]

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
