Rails.application.routes.draw do
  namespace :controller do
    get 'v1/index'
    get 'v1/show'
  end
  concern :api_base do
    resources :employees   
    resources :managers
  end

  namespace :v1 do
    get 'managers/index'
    get 'managers/show'
    get 'employees/index'
    get 'employees/show'
    concerns :api_base
  end
end
