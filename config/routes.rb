Rails.application.routes.draw do

  get 'orders/index'

  get 'orders/new'

  post 'orders' => 'orders#create'
  
  resources :food_items
  get 'menu' => 'home#menu'

  get 'contact_us' => 'home#contact_us'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
