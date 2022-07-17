Rails.application.routes.draw do
  devise_for :admins
  devise_for :customers
  root :to =>"public/homes#top"
  get "about"=>"public/homes#about"

  get 'cart_items' => 'public/cart_items#index'
  get 'customers/:id' => 'public/customers#show'
  get 'customers/:id/edit' => 'public/customers#edit'
  get 'items' => 'public/items#index'
  get 'items/:id' => 'public/items#show'

  # namespace :admin do
  #   resources :customers, only: [:index,:show,:edit]
  #   resources :genres, only: [:index,:edit]

    get ""=>"homes#top"
  # end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
