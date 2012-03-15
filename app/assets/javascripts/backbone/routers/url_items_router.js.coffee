class Icm.Routers.UrlItemsRouter extends Backbone.Router
  initialize: (options) ->
    @urlItems = new Icm.Collections.UrlItemsCollection()
    @urlItems.reset options.urlItems

  routes:
    "/new"      : "newUrlItem"
    "/index"    : "index"
    "/:id/edit" : "edit"
    "/:id"      : "show"
    ".*"        : "index"

  newUrlItem: ->
    @view = new Icm.Views.UrlItems.NewView(collection: @url_items)
    $("#url_items").html(@view.render().el)

  index: ->
    @view = new Icm.Views.UrlItems.IndexView(url_items: @url_items)
    $("#url_items").html(@view.render().el)

  show: (id) ->
    url_item = @url_items.get(id)

    @view = new Icm.Views.UrlItems.ShowView(model: url_item)
    $("#url_items").html(@view.render().el)

  edit: (id) ->
    url_item = @url_items.get(id)

    @view = new Icm.Views.UrlItems.EditView(model: url_item)
    $("#url_items").html(@view.render().el)
