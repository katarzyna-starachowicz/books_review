Rails.application.routes.draw do
  root 'welcome#home'

  resources :books, only: [:index, :show]

  resources :authors, only: :index do
    member do
      get 'books'
    end
  end
end
