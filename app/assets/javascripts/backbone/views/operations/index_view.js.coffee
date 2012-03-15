Icm.Views.Operations ||= {}

class Icm.Views.Operations.IndexView extends Backbone.View
  template: JST["backbone/templates/operations/index"]

  initialize: () ->
    @options.operations.bind('reset', @addAll)

  addAll: () =>
    @options.operations.each(@addOne)

  addOne: (operation) =>
    view = new Icm.Views.Operations.OperationView({model : operation})
    @$("tbody").append(view.render().el)

  render: =>
    $(@el).html(@template(operations: @options.operations.toJSON() ))
    @addAll()

    return this
