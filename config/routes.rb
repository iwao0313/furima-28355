Rails.application.routes.draw do
  devise_for :users
  root "items#index"
  resources :items, only:[:new, :create, :show, :edit, :update, :destory] do
    resources :purchases, only:[:index, :create]
  end
end
