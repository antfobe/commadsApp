Rails.application.routes.draw do
  get 'users/new'

  root  'static_pages#auth'
  get   '/auth',     to: 'static_pages#auth'
  get   '/help',     to: 'static_pages#help'
  get   '/contact',  to: 'static_pages#contact'
  get   '/adduser',  to: 'users#new'
  post  '/adduser',  to: 'users#create'
  resources :users
  resources :patient_logs
  resources :patients
  resources :appointments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
