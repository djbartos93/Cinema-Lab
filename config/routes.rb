Rails.application.routes.draw do
  resources :controls
  get '/control' => "control/index"

end
