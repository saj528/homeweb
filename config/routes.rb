Rails.application.routes.draw do
  get 'homeweb/index'
  root 'homeweb#index'
  resources :homewebs ,:customers, :names
  get 'contact-me', to: 'messages#new', as: 'new_message'
  post 'contact-me', to: 'messages#create', as: 'create_message'

end
