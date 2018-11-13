require 'sidekiq/web'

Rails.application.routes.draw do
  resources :jobs
  devise_for :users
    as :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root to: 'jobs#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
