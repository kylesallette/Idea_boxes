Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "dashboard#index"

get "/login", to: "sessions#new"
post "/login", to: "sessions#create"
delete "/logout", to: "sessions#destroy"


  resources :users, only:[:new, :create, :show] do
    resources :ideas
  end
  namespace :admin do
    resources :images
  resources :categories, only: [:index, :new, :destroy, :edit, :update, :create]
end

end
