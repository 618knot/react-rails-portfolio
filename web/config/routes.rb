Rails.application.routes.draw do
  root 'home#index'
  get '/zenn', to: 'home#zenn_api'
  get '/connpass', to: 'home#connpass_api'
  get '/github', to: 'home#github_api'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
