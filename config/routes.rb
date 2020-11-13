Rails.application.routes.draw do
  root  "home#top"
  get "about" => "home#about"
  get "index" => "posts#index"
  
  get "contact" => "inquiry#index"              # 入力画面
  post "contact/confirm" => "inquiry#confirm"   # 確認画面
  post "contact/thanks" => "inquiry#thanks"     # 送信完了画面
end
