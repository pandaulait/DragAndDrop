Rails.application.routes.draw do
  resources :tasks, only: [:new, :create, :index, :show, :destroy] do
    put :sort
  end
  get 'homes/top'
  devise_for :users
  root to: 'homes#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
