Rails.application.routes.draw do
  devise_for :users
  root to: "products#index"

  devise_scope :user do
  	# get "users/profile", to: "users#profile"
  end

  resources :products do
  	get :download_excel, on: :collection
  end
  post "/search_products", to: "products#search_products"
  get "/search_products", to: "products#search_products"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
