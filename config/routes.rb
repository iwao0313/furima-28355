Rails.application.routes.draw do
  devise_for :users
  root "item#index"
  resources :items, only:[:new, :create, :show, :edit, :update, :destory] do
    resources :purchases, only:[:index, :create]
  end
end
