Rails.application.routes.draw do
  mount_ember_app :frontend, to: "/"
  resources :features
  resources :tfeatures
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
