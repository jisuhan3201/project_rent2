Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  get 'home/index'
  get '/building/liberal' => "building#liberal"
  get '/building/science1' => "building#science1"
  get '/building/science2' => "building#science2"
  get '/building/buiseness' => "building#buiseness"
  get '/building/nongshim' => "building#nongshim"

  get '/science1/:roomnum' => "science1#index"
  get '/science2/:roomnum' => "science2#index"
  get '/nongshim/:roomnum' => "nongshim#index"
  get '/buiseness/:roomnum' => "buiseness#index"
  get '/liberal/:roomnum' => "liberal#index"


  post 'form/create'
  get 'form/read'
  get 'form/edit'
  get 'form/:form_id' => "form#destroy"
  get 'form/:form_id/update' => 'form#edit'
  post 'updateview/:form_id' => 'form#editview'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
