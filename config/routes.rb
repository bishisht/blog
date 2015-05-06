Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users
  get 'posts/index'

  get 'feed' => 'articles#feed'

  resources :articles do
  	resources :comments
  end

  get 'welcome/index'
  root 'welcome#index'
end
