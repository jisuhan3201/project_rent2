Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  get 'home/index'
  get '/building/liberal' => "building#liberal"
  get '/building/science1' => "building#science1"
  get '/building/science2' => "building#science2"
  get '/building/buiseness' => "building#buiseness"
  get '/building/nongshim' => "building#nongshim"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
