Icm.Views.UrlItemComments ||= {}

class Icm.Views.UrlItemComments.IndexView extends Backbone.View
  template: JST["backbone/templates/url_item_comments/index"]

  initialize: () ->
    @options.urlItemComments.bind('reset', @addAll)

  addAll: () =>
    @options.urlItemComments.each(@addOne)

  addOne: (urlItemComment) =>
    view = new Icm.Views.UrlItemComments.UrlItemCommentView({model : urlItemComment})
    @$("tbody").append(view.render().el)

  render: =>
    $(@el).html(@template(urlItemComments: @options.urlItemComments.toJSON() ))
    @addAll()

    return this
