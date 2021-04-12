Rails.application.routes.draw do
 get '/'=>'user#index'
post '/job_sessions'=>'job_sessions#create'
 post '/users'=>'users#create'
 get "/dashboard"=>'joppost#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
