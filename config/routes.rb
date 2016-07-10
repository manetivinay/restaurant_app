Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # here we are doing nested routes
  # food_item/:food_item_id/orders/new
  resources :food_items do
    resources :orders
  end
  get 'menu' => 'welcome#menu'
  get 'contact_us' => 'welcome#contact_us'
  get 'show_menu' => 'welcome#show'
  root 'welcome#index'
end
