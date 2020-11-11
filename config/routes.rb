Rails.application.routes.draw do
  root  "home#top"
  get "about" => "home#about"
  get "contact" => "home#contact"
  get "index" => "posts#index"

end
