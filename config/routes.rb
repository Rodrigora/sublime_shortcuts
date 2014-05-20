Rails.application.routes.draw do
  resources :shortcuts

  get '/', to: 'home#index'
end
