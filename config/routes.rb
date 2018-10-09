Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      # make user endpoints down the line after authentication
      # resources :user
      resources :boards, only: [:index, :show, :create, :update, :destroy]
      resources :lists, only: [:index, :show, :create, :update, :destroy]
      resources :notes, only: [:show, :create, :update, :destroy]
    end
  end
end
