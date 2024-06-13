Rails.application.routes.draw do
  devise_for :users
  root to: 'tops#index' # トップページをルートに設定
  get 'tops/index'
end
