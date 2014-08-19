Barker::Application.routes.draw do

  root 'homes#show', via: :get

  resource :dashboard, only: [:show]
  resources :barks, only: [:show, :destroy]
  resource :session, only: [:new, :create, :destroy]

  resources :users, only: [:new, :create, :show, :index] do
    post "follow" => 'following_relationships#create'
    delete "follow" => 'following_relationships#destroy'
  end

  resources :text_barks, only: [:create]
  resources :photo_barks, only: [:create]
  resources :follow_user, only: [:create]

end
