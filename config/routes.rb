Rails.application.routes.draw do
  resources :songs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/artists/:id' => 'artists#show', as: "artist"
  get '/artists' => 'artists#index'

end
