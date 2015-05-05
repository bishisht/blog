Rails.application.routes.draw do
  devise_for :users
  get 'posts/index'

  resources :articles do
  	resources :comments
  end

  get 'welcome/index'
  root 'welcome#index'
end
