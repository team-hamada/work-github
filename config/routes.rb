Rails.application.routes.draw do

  devise_for :admin, controllers: {
    sessions: "admin/sessions"
  }

  devise_for :customers, controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }



  # get 'items' => 'public/items#index'
  # get 'items/:id' => 'public/items#show'



  # get 'cart_items' => 'public/cart_items#index'
  # patch 'cart_items/:id' => 'public/cart_items#update'


  # post 'cart_items' => 'public/cart_items#create'

  #get 'orders/new' => 'public/orders#new'

  #get 'orders/complete' => 'public/orders#complete'
  #post 'orders' => 'public/orders#create'
  #get 'orders' => 'public/orders#index'
  #get 'orders/:id' => 'public/orders#show'

  # get 'addresses/:id/edit' => 'public/addresses#edit'
  # get 'addresses' => 'public/addresses#index'
  # post 'addresses' => 'public/addresses#create'
  # patch 'addresses/:id' => 'public/addresses#update'
  # delete 'addresses/:id' => 'public/addresses#destroy'

  scope module: :public do
    root :to =>"homes#top"
    get "about"=>"homes#about"
    resources :addresses, only:[:index, :edit, :create, :destroy, :update]
    get 'customers/my_page' => 'customers#show'
    get 'customers/information/edit' => 'customers#edit'
    patch 'customers/information' => 'customers#update'
    get 'customers/unsubscribe' => 'customers#unsubscribe'
    patch 'customers/withdraw' => 'customers#withdraw'
    get 'items/:id/index_by_genre' => 'items#index_by_genre', as: 'index_by_genre'
    resources :items, only:[:index, :show]
    delete 'cart_items/destroy_all' => 'cart_items#destroy_all'
    resources :cart_items, only:[:index, :update, :destroy, :create]
    post 'orders/comfirm' => 'orders#comfirm'
    get 'orders/complete' => 'orders#complete'
    resources :orders, only:[:new, :complete, :create, :index, :show]
  end

  namespace :admin do
    get ""=>"homes#top"
    resources :order_details, only: [:update]
    resources :items, only: [:index, :new, :create, :show, :edit, :update]
    resources :genres, only: [:index, :create, :edit, :update]
    resources :customers, only: [:index, :show, :edit, :update]
    resources :orders, only: [:show, :update]

  end


  # get 'items' => 'items#index'
  # get 'items/new' => 'items#new'
  # post 'items' => 'items#create'
  # get 'items/:id' => 'items#show'
  # get 'items/:id/edit' => 'items#edit'
  # patch 'items/:id' => 'items#update'

  # get 'genres' => 'genres#index'
  # post 'genres' => 'genres#create'
  # get 'genres/:id/edit' => 'genres#edit'
  # patch 'genres/:id' => 'genres#update'

  # get 'customers' => 'customers#index'
  # get 'customers/:id' => 'customers#show'
  # get 'customers/:id/edit' => 'customers#edit'
  # patch 'customers/:id' => 'customers#update'

  # get 'orders/:id' => 'orders#show'
  # patch 'orders/:id' => 'orders#update'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
