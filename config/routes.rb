Barker::Application.routes.draw do

  root 'homes#show', via: :get

  resource :dashboard, only: [:show]
  resources :barks, only: [:create, :show]
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
  resources :text_barks, only: [:create]
  resources :photo_barks, only: [:create]

end
