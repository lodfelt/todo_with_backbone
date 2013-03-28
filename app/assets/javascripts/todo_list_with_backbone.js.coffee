window.TodoListWithBackbone =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}

  initialize: ->
  	new TodoListWithBackbone.Routers.TodoItems()
  	Backbone.history.start()

$(document).ready ->
	TodoListWithBackbone.initialize()
