Rails.application.routes.draw do
  get 'league/index'
  resources :leagues do
      resources :bowlers
      resources :weeks
      resources :teams
  end
  root 'league#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
