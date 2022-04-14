Rails.application.routes.draw do
  resources :reports, only: [:index, :show, :create, :destroy]
end
