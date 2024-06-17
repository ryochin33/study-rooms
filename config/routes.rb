Rails.application.routes.draw do
  get 'rooms/index'
  devise_for :users
  root to: 'tops#index' # トップページをルートに設定
  resources :rooms, only: [:index, :new, :create] 
end
