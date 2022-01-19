Rails.application.routes.draw do
  root 'web/static_pages#home'

  scope module: :web do
    resources :microposts, shallow: true
  end

#  scope module: :web do
#    get 'index', to: 'microposts#index'
#    get 'show', to: 'microposts#show'
#    get 'new', to: 'microposts#new'
#    get 'edit', to: 'microposts#edit'
#    get 'create', to: 'microposts#create'
#  end

end
