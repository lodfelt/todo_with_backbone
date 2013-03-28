class TodoListWithBackbone.Routers.TodoItems extends Backbone.Router
	routes:
		'': 'index'

	initialize: ->
		@collection = new TodoListWithBackbone.Collections.TodoItems()
		@collection.fetch({reset: true})

	index: ->
		view = new TodoListWithBackbone.Views.TodoItemsIndex(collection: @collection)
		$('#container').html(view.render().el)