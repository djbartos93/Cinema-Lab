Rails.application.routes.draw do
resources :control
get '/control/' => 'control#index'
root 'control#status'

end
