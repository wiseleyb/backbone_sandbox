class Icm.Models.Operation extends Backbone.Model
  paramRoot: 'operation'

  constructor: (attributes, options = {}) ->
    super attributes, options
    console.log "Models.Operation:constructor"
  
  initialize: ->
    @url_items = new Icm.Collections.UrlItemsCollection(this.id)
    console.log "Models.Operation:initialize"
    window.test = this
    
  test: ->
    console.log "test"
    
  defaults:
    title: null
    

