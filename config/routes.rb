Rails.application.routes.draw do
  resources :books
  resources :toys
  root to: 'toys#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
