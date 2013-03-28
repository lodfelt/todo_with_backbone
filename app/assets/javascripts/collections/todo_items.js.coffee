class TodoListWithBackbone.Collections.TodoItems extends Backbone.Collection

  model: TodoListWithBackbone.Models.TodoItem

  url: '/api/todo_items'
