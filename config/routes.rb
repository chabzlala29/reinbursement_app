Rails.application.routes.draw do
  namespace :admin do
    devise_for :admins
  end
end
