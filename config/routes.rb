Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #

  resources :items do
    member do
      get 'complete'
      get 'uncomplete'
    end
  end
end
