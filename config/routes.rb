Rails.application.routes.draw do
  devise_for :employees, controllers: { registrations: 'employees/registrations' }
  devise_for :admins

  namespace :admin do
    resources :employees
  end

  resources :categories, only: [:show, :index]

  get '/profile' => 'dashboard#profile'
  get '/edit_profile' => 'dashboard#edit_profile'
  patch '/update_profile' => 'dashboard#update_profile'

  root to: 'dashboard#profile'
end
