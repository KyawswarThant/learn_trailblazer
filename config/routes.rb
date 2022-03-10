Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "things#index"
  resources :things
  get "thing/new/csv", to: "things#csv_form"
  post "thing/new/csv", to: "things#csv_upload"
end
