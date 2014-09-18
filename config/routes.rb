NewAuthDemo::Application.routes.draw do
  resources :users, :only => [:create, :new, :show]
  resource :session, :only => [:create, :destroy]

  get '/contact/', to: 'staticpages#contact', as: 'contact'
  get '/home/', to: 'staticpages#home', as: 'home'
  get '/about/', to: 'staticpages#about', as: 'about'

  root :to => "staticpages#home"
end
