Rails.application.routes.draw do
  resources :offers
  devise_for :users
  get 'welcome/home'
  get '/my_reactions', to: 'reactions#offer_with_reactions', as: 'my_reactions'


  post '/reactions', to: 'reactions#user_reaction', as: 'user_reaction'

  

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "welcome#home"
end
