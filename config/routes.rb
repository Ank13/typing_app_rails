Typing::Application.routes.draw do
  
  devise_for :users
  root :to => "users#home"

  resources :users, :only => [:index]

end
