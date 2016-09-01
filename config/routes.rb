Rails.application.routes.draw do
  root 'welcome#index'
  resources :students
end
