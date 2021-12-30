Rails.application.routes.draw do
  resources :user_entries
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "user_entries#index"
end
