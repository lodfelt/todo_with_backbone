class TodoItemsController < ApplicationController
  respond_to :json

  def index
    respond_with TodoItem.all
  end

  def show
    respond_with TodoItem.find(params[:id])
  end

  def create
    respond_with TodoItem.create(params[:todo_item])
  end

  def update
    respond_with TodoItem.update(params[:id], params[:todo_item])
  end

  def destroy
    respond_with TodoItem.destroy(params[:id])
  end
end
