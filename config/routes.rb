Rails.application.routes.draw do

  get 'static_pages/billboard'
  root 'artists#index'
  
 resources :artists do
   resources :albums
 end

 resources :albums do 
  resources :songs
 end
end
