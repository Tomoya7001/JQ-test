Rails.application.routes.draw do

  devise_for :users
  get 'top' => 'homes#top'
  get "about" => "homes#about"
  resources :conversations, only: [:index]

  resources :lists

resources :conversations do
    resources :messages
  end

end
