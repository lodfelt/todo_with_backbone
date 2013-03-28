TodoListWithBackbone::Application.routes.draw do

  scope "api" do
    resources :todo_items
  end

  root to: "todo_lists#index"

end
