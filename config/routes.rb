Rails.application.routes.draw do

  get 'chats/show'
  devise_for :users
  get 'top' => 'homes#top'
  get "about" => "homes#about"
  resources :conversations, only: [:index]

  resources :lists

  get 'chat/:id', to: 'chats#show', as: 'chat'
  resources :chats, only: [:create]

resources :conversations do
    resources :messages
  end

end
