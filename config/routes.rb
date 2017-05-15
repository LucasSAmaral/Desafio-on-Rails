Rails.application.routes.draw do
  get 'welcome/index'

  resources :imovel
  
  resources :anuncio
    
  root 'welcome#index'
end
