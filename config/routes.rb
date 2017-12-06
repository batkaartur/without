Rails.application.routes.draw do
  resources :admin, only: [:index]
  resources :orders, only: [:create, :destroy]
  scope '/admin' do
    resources :posts, only: [:update, :index]
  end
  root 'welcome#index'
  get 'welcome/index'
  get 'addnews', to: 'welcome#addnews'
  post 'welcome/download'
end
