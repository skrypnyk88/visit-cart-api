Rails.application.routes.draw do
  post '/signin', to: 'authentication#authenticate'
  get '/refresh_token', to: 'authentication#refresh_token'
  devise_for :user, skip: :sessions
  # devise_for :users
  resources :carts do
    put :upload, on: :member
  end
end
