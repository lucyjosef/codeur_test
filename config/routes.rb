Rails.application.routes.draw do

  root "events#index"

  # do not use interpolation because of reserved word new
  resources :events, only: ["create", "index", "show", "new"] do
    resources :comments, only: %i[create index]
  end
end
