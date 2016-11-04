Rails.application.routes.draw do
  devise_for :admins
  root 'welcome#index'
  resources :students
end
