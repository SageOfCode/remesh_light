Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :conversations, only: [:new, :index, :show, :create] do
    resources :messages, only: [:new, :create] do 
      resources :thoughts, only: [:new, :create]
    end
  end
end
