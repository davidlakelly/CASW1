Rails.application.routes.draw do
  #get 'info/infogem'
  #get 'info/infoauthor'
  #get 'info/infolatestgems'
  root 'welcome#index'
  match 'searchgem', to: 'info#infogem', via: [:get, :post]
  match 'searchauthor', to: 'info#infoauthor', via: [:get, :post]
  match 'searchlatest', to: 'info#infolatestgems', via: [:get, :post]
  resources :dependencies
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end 
