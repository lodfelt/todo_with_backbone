class TodoListWithBackbone.Models.TodoItem extends Backbone.Model

	initialize: ->
		this.on('remove', @removeTodoItem)

	removeTodoItem: ->
    this.destroy()
