Rails.application.routes.draw do
  namespace :admin do
    get 'preferences/index'
  end

  resources :artists do
    resources :songs, only: [:index, :show, :new, :edit]
  end

  resources :songs 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
