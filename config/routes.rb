require "sidekiq/web"

Rails.application.routes.draw do
  devise_for :users

  resources :posts

  root to: "home#index"

  mount Sidekiq::Web, at: "/sidekiq"
end
