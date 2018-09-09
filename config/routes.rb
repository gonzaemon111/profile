Rails.application.routes.draw do
  resources :articles, except: %i[new edit] do
    resources :comments, only: %i[index create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
