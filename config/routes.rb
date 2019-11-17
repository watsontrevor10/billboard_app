Rails.application.routes.draw do

  root 'artists#index'
  get "/billboards/:billboard" => "billboard#show"
  
 resources :artists do
   resources :albums
 end

 resources :albums do 
  resources :songs
 end
end
