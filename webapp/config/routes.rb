Rails.application.routes.draw do
  
  devise_for :users
  resources :articles do
  	resources :comments
  end

  resources :chat_rooms, only: [:new, :create, :show, :index]

  root 'welcome#index'

  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
