class TodoListWithBackbone.Views.TodoItemsIndex extends Backbone.View

  template: JST['todo_items/index']

  events:
    'submit #new_todo_item': 'createTodoItem',
    'click #clear-todo-items': 'clearTodoItems'

  initialize: ->
  	@collection.on('reset', this.render, this)
  	@collection.on('add', @appendTodoItem, this)

  render: ->
    $(@el).html(@template())
    @collection.each(@appendTodoItem)
    this

  appendTodoItem: (todo_item) ->
  	view = new TodoListWithBackbone.Views.TodoItem(model: todo_item)
  	$('#todo-items').append(view.render().el)

  clearTodoItems: (event) ->
    doneItems = @collection.where({done: true})
    @collection.remove(doneItems)
    $("#todo-items > li.done").each (index, element) ->
      $(element).slideUp()
    false

  createTodoItem: (event) ->
  	attributes = name: $('#new_todo_item_name').val()
  	@collection.create attributes,
  	  wait: true
  	  success: ->
  	    $('#new_todo_item')[0].reset()
  	  error: @handleError
  	false

  handleError: (item, response) ->
  	if response.status == 422
  		errors = $.parseJSON(response.responseText).errors
  		for attribute, messages of errors
  			alert "#{attribute} #{message}" for message in messages