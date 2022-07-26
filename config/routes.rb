Rails.application.routes.draw do

  get 'top' => 'homes#top'
  resources :lists

resources :conversations do
    resources :messages
  end

end
