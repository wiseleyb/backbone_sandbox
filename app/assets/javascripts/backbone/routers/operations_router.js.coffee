class Icm.Routers.OperationsRouter extends Backbone.Router
  initialize: (options) ->
    @operations = new Icm.Collections.OperationsCollection()
    @operations.reset options.operations

  routes:
    "/new"      : "newOperation"
    "/index"    : "index"
    "/:id/edit" : "edit"
    "/:id"      : "show"
    ".*"        : "index"

  newOperation: ->
    @view = new Icm.Views.Operations.NewView(collection: @operations)
    $("#operations").html(@view.render().el)

  index: ->
    @view = new Icm.Views.Operations.IndexView(operations: @operations)
    $("#operations").html(@view.render().el)

  show: (id) ->
    operation = @operations.get(id)

    @view = new Icm.Views.Operations.ShowView(model: operation)
    $("#operations").html(@view.render().el)

  edit: (id) ->
    operation = @operations.get(id)

    @view = new Icm.Views.Operations.EditView(model: operation)
    $("#operations").html(@view.render().el)
