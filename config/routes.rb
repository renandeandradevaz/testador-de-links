TestadorDeLinks::Application.routes.draw do

  root 'links#index'

  resources :links
end
