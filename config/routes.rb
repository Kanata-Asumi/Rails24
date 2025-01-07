Rails.application.routes.draw do
  resources :tweets
  resources :tanomus
  resources :samurais
  get 'check/example'
  
  # 最初に表示する画面
  root "home#_not_logged_in"
  
  get '/login', to: 'sessions#new'
  post '/login', to:'sessions#create'
  # as:'xxx'を付けると，viewファイルでxxx_pathと記入することができる．
  get '/logout', to: 'sessions#destroy', as: 'logout'
  # 以下をすると，エラー「No route matches [GET] "/logout"」が発生する 
  # delete '/logout', to: 'sessions#destroy', as: 'logout'

  #root 'sessions#new'
  #post '/login', to: 'sessions#create'
  #delete '/logout', 'sessions#destroy'
  
  #root 'home#top'
  
  #get 'home/top'
  #get "home/top" => "home#top"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  # ルーティングの追加
  get "/home", to:'home#home', as:'home'
  get "home/choice", to:'home#choice', as:'choice'
  get "home/view", to:'tweets#index', as:'view'

  # 新規投稿
  get "home/view/input", to: 'posts#input'

  # ユーザ情報
  get 'home/profile', to: 'profile#new', as:'new'
  post 'home/profile', to: 'profile#create'

  # 趣味選択
  get 'home/choice', to: 'hobby_selectings#new'
  post 'home/choice', to: 'hobby_selectings#create'

  #趣味
  resources :hobbies
end
