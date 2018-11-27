Rails.application.routes.draw do
  get 'workspaces/index'
  get 'workspaces/show'
  get 'workspaces/new'
  get 'workspaces/create'
  get 'workspaces/edit'
  get 'workspaces/update'
  get 'workspaces/destroy'
  get 'reviews/index'
  get 'reviews/show'
  get 'reviews/new'
  get 'reviews/create'
  get 'reviews/edit'
  get 'reviews/update'
  get 'reviews/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
