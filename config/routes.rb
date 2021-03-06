Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'site#home'
  get '/contact', to: 'site#contact'
  get '/say_name/', to: 'site#say_name'
  get '/calculator', to: 'site#calculator'
  post '/calculate', to: 'site#calculate'

  resources :projects, only: [:index, :show, :new, :create] do
    resources :time_entries, except: [:show]
  end
end
