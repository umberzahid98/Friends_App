Rails.application.routes.draw do
  devise_for :users
  resources :dosts
  get 'friends/view'
  get 'friends/index'
  get 'friends/new'
  get 'friends/create'
  get 'friends/show'
  get 'friends/edit'
  get 'friends/update'
  get 'friends/destroy'
  get 'window/index'
  get 'home/about'
  root 'home#index'
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
