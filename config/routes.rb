Rails.application.routes.draw do
  resources :ufs

  get 'uf_value/:date', to: 'ufs#uf_value'
  get 'client/:client_name', to: 'clients#client_request'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
