Rails.application.routes.draw do
  # get 'doses/new'
  # get 'doses/create'
  # get 'doses/destroy'
  # get 'cocktails/index'
  get 'cocktails/new'
  # get 'cocktails/show'
  # get 'cocktails/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:index, :show, :create, :new] do
    resources :doses, only: [:create, :new, :destroy]
  end
  resources :doses, only: [:destroy]

  # get '/cocktails', to: 'cocktails#index'
  # get '/cocktails/:id', to: 'cocktails#show'
  # post '/cocktails', to: 'cocktails#create'
  # get '/cocktails/new', to: 'cocktails#new'

  # post '/cocktails/:cocktails_id/doses', to: 'doses#create'
  # get '/cocktails/:cocktails_id/doses/new', to: 'doses#new'
  # delete '/doses/:id', to: 'doses#destroy'
end
