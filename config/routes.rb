Rails.application.routes.draw do
  devise_for :users

  resources :users do
    member do
      get 'levelup_memo'
      get 'levelup_study'
    end
    resources :memos, only:[:index, :create, :update, :destroy, :edit] 
    post 'restoration/:id' => 'memos#restoration'
    resources :learns
    resources :studys
  end

  root "welcome#index"
end
