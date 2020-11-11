Rails.application.routes.draw do
  root  "home#top"
  get "about" => "home#about"
  get "index" => "posts#index"
<<<<<<< HEAD
  get "contact" => "contacts#new"
=======
  get "contact" => "home#contact"
>>>>>>> add-contactform
  
end
