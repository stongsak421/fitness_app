Rails.application.routes.draw do
  devise_for :users
  #get 'site/home'

  root 'posts#index', as: 'activites'


  get 'home' => 'site#home', as: 'home'
  get 'about' => 'site#about', as: 'about'

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
