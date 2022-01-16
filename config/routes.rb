Rails.application.routes.draw do

  root 'web/static_pages#home'

  #namespace :web do
  #  get 'microposts/index'
  #  get 'microposts/new'
  #  get 'microposts/create'
  #  get 'microposts/destroy'
  #end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
