Rails.application.routes.draw do
    devise_for :accounts, :controllers => {
    :registrations => 'accounts/registrations',
    :sessions => 'accounts/sessions'   
  } 

  devise_scope :account do
    get "sign_in", :to => "accounts/sessions#new"
    get "sign_out", :to => "accounts/sessions#destroy" 
  end
  
  root  "home#top"
  get "about" => "home#about"
  get "posts/:id" => "home#show"
  #投稿画面
  get "tweet" => "posts#new"
  post "tweet/success" => "posts#create"
  #投稿編集時に既存の値取得
  get "posts/:id/edit" => "posts#edit"
  #投稿編集
  post "posts/:id/update" => "posts#update"
  #投稿削除
  post "posts/:id/destroy" => "posts#destroy"
  #CSV出力
  get "excel" => "posts#index"
  #問い合わせフォーム
  get "contact" => "home#contact"
  #下記問い合わせフォームはSendgrid使えないから保留
  #get "contact" => "inquiry#index"              # 入力画面
  #post "contact/confirm" => "inquiry#confirm"   # 確認画面
  #post "contact/thanks" => "inquiry#thanks"     # 送信完了画面
  #ログイン機能
  
  
end
