Rails.application.routes.draw do
  get 'welcome/index'

  resources :imovel
    
  root 'welcome#index'
end
