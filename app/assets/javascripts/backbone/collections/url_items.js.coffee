class Icm.Collections.UrlItemsCollection extends Backbone.Collection
  model: Icm.Models.UrlItem
  url: '../operations/' + @operations_id + '/url_items'
  
  constructor: (attributes, options = {}) ->
    super attributes, options
    console.log "Collections.UrlItems:constructor"
  
  initialize: (operation_id)->
    console.log "Collections.UrlItems:initialize"
    @operation_id = operation_id