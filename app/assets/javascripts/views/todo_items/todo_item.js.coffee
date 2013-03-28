class TodoListWithBackbone.Views.TodoItem extends Backbone.View

  template: JST['todo_items/todo_item']
  tagName: 'li'

  events:
    "change input[name='todo_item[done]']": "toggleDone"

  render: ->
    $(@el).html(@template(item: @model))
    $(@el).addClass('done') if @model.get('done')
    this

  toggleDone: ->
    $li = @.$el
    $li.toggleClass('done')
    @.model.save({done: $li.find("input[name='todo_item[done]']").prop('checked')})

    false