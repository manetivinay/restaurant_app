Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :food_items
  get 'menu' => 'menu#index'
  get 'contact_us' => 'welcome#contact_us'
  get 'food_items' => 'food_items#index'
  root 'welcome#index'
end
