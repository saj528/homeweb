Rails.application.routes.draw do
  get 'homeweb/index'
  root 'homeweb#index'
  resources :homewebs 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
