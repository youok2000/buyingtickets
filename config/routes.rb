Rails.application.routes.draw do
  
  get 'post/new' => 'post#new'

  post 'post/create' => 'post/create'

  post 'ticket/create' => 'ticket#create' 
  post 'ticket/login' => 'ticket#login'
  post 'ticket/logout' => 'ticket#logout'
  

  post 'host/create' => 'host#create'
  post 'host/login_host' => 'host#login_host'
  post 'host/logout_host' => 'host#logout_host'

  get '/' => 'home#top'

  get 'host_form' => 'host#host_form'
  get 'login_host_form' => 'host#login_host_form'
  get 'signup_host_form' => 'host#signup_host_form'

  get 'information' => 'ticket#information'
  get 'index' => 'ticket#index'
  get 'login_form' => 'ticket#login_form'
  get 'show/:id' => 'ticket#show'
 
  post 'ticket/destroy/:id' => 'ticket#destroy'
  get  'post/show/:id' => 'post#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
