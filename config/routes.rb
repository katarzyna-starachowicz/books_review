Rails.application.routes.draw do
  devise_for :users
  root 'welcome#home'

  resources :books, only: [:index, :show]

  resources :authors, only: :index do
    member do
      get 'books'
    end
  end
end
