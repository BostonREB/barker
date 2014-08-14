Barker::Application.routes.draw do

  root 'homes#show', via: :get

  resource :dashboard, only: [:show]
  resources :barks, only: [:create, :show, :destroy]
  resource :session, only: [:new, :create, :destroy]

  resources :users, only: [:new, :create, :show] do
    post "follow" => 'following_relationships#create'
  end

  resources :text_barks, only: [:create]
  resources :photo_barks, only: [:create]
  resources :follow_user, only: [:create]

end
