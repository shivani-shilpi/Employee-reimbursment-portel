Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :employees 
  resources :bills
  
  resources :departments
  root "employees#index"
end
