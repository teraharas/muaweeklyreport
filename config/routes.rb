Rails.application.routes.draw do
  root 'static_pages_controller#index'

  get '/auth/:provider/callback' => 'sessions#callback'
  get '/signout' => 'sessions#destroy', :as => :signout

end
