Rails.application.routes.draw do
  resources :categories, :cakes

  devise_for :users,
  controllers: {
      sessions: 'users/sessions',
      registrations: 'users/registrations'
  }

  get '/member-data', to: 'members#show'  

  get '/', to: 'cakes#index'
end
