Rails.application.routes.draw do
  resources :categories, :cakes

  get '/', to: 'cakes#index'
end
