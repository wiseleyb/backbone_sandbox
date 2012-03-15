Icm.Views.UrlItems ||= {}

class Icm.Views.UrlItems.IndexView extends Backbone.View
  template: JST["backbone/templates/url_items/index"]

  initialize: () ->
    @options.urlItems.bind('reset', @addAll)

  addAll: () =>
    @options.urlItems.each(@addOne)

  addOne: (urlItem) =>
    view = new Icm.Views.UrlItems.UrlItemView({model : urlItem})
    @$("tbody").append(view.render().el)

  render: =>
    $(@el).html(@template(urlItems: @options.urlItems.toJSON() ))
    @addAll()

    return this
