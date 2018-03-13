Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    resources :challenges
    resources :chapters

    get "/update/connection", to: "update#check_connection", as: "connection"
    get "/update/repo_availability", to: "update#repo_availability", as: "availability"
    get "/update/pull", to: "update#pull", as: "pull_repo"
    post "/update/sync", to: "update#sync", as: "sync"


end
