Rails.application.routes.draw do
  resources :ufs

  get 'by_date/:date', to: 'ufs#by_date'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
