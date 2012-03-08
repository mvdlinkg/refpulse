RefereePulse::Application.routes.draw do
  devise_for :users do
    get '/login' => 'devise/sessions#new'
    get '/logout' => 'devise/sessions#destroy'
  end

  root :to => "home#index"
end
