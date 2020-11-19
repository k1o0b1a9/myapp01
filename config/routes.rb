Rails.application.routes.draw do
  devise_for :accounts
  root  "home#top"
  get "about" => "home#about"
  #投稿画面
  get "tweet" => "posts#new"
  post "tweet/success" => "posts#create"
  #問い合わせフォーム
  get "contact" => "home#contact"
  #下記問い合わせフォームはSendgrid使えないから保留
  #get "contact" => "inquiry#index"              # 入力画面
  #post "contact/confirm" => "inquiry#confirm"   # 確認画面
  #post "contact/thanks" => "inquiry#thanks"     # 送信完了画面
  #ログイン機能
  get    "login",   to: "sessions#new"
  post   "login",   to: "sessions#create"
  delete "logout",  to: "sessions#destroy"
  
end
