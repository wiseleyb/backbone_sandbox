class Icm.Routers.UrlItemCommentsRouter extends Backbone.Router
  initialize: (options) ->
    @urlItemComments = new Icm.Collections.UrlItemCommentsCollection()
    @urlItemComments.reset options.urlItemComments

  routes:
    "/new"      : "newUrlItemComment"
    "/index"    : "index"
    "/:id/edit" : "edit"
    "/:id"      : "show"
    ".*"        : "index"

  newUrlItemComment: ->
    @view = new Icm.Views.UrlItemComments.NewView(collection: @url_item_comments)
    $("#url_item_comments").html(@view.render().el)

  index: ->
    @view = new Icm.Views.UrlItemComments.IndexView(url_item_comments: @url_item_comments)
    $("#url_item_comments").html(@view.render().el)

  show: (id) ->
    url_item_comment = @url_item_comments.get(id)

    @view = new Icm.Views.UrlItemComments.ShowView(model: url_item_comment)
    $("#url_item_comments").html(@view.render().el)

  edit: (id) ->
    url_item_comment = @url_item_comments.get(id)

    @view = new Icm.Views.UrlItemComments.EditView(model: url_item_comment)
    $("#url_item_comments").html(@view.render().el)
