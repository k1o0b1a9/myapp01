Rails.application.routes.draw do
  devise_for :admin_accounts, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root  "home#top"
  get "about" => "home#about"
  get "index" => "posts#index"
  get "contact" => "home#contact"
  
end
