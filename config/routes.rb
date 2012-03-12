RefereePulse::Application.routes.draw do
  resources :match_stats

  resources :votes

  resources :matches

  resources :teams

  resources :referees

  devise_for :users do
    get '/login' => 'devise/sessions#new'
    get '/logout' => 'devise/sessions#destroy'
  end

  root :to => "home#index"
end
