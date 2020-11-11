Rails.application.routes.draw do
  root  "home#top"
  get "about" => "home#about"
  get "index" => "posts#index"
  get "contact" => "contacts#new"
  
end
