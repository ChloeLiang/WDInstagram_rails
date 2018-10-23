Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :photos
  resources :comments

  resources :tags do
    resources :photos
  end

  root 'photos#index'
end
