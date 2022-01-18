Rails.application.routes.draw do
  root 'web/static_pages#home'

  #resources :microblogs, shallow: true, only: %i[index]
  #resources :microblogs

  scope module: :web do
    get 'index', to: 'microblogs#index'
    get 'show', to: 'microblogs#show'
    #resources :microblogs, shallow: true, only: %i[index]
    #resources :microblogs, shallow: true
  end
  

  #namespace :web do
  #  get 'microposts/index'
  #  get 'microposts/new'
  #  get 'microposts/create'
  #  get 'microposts/destroy'
  #end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
