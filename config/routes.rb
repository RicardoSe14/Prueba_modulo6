Rails.application.routes.draw do

  post 'create_user' => 'users#create', as: :create_user
  get '/resource/sign_in'
  post '/resource/sign_in'

  get 'perfil/index'
  resources :offers
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
    }
  get 'welcome/home'
  get '/my_reactions', to: 'reactions#offer_with_reactions', as: 'my_reactions'


  post '/reactions', to: 'reactions#user_reaction', as: 'user_reaction'

  

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "welcome#home"
end
