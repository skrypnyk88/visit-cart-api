Rails.application.routes.draw do
  resources :carts do
    put :upload, on: :member
  end
end
