Rails.application.routes.draw do
  resources :questions
  root to: 'questions#index'

  namespace :api, path: '' do
    namespace :v1 do
      resources :questions, only: [:index, :show, :create, :update, :destroy]
    end
  end
end
