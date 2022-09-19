Rails.application.routes.draw do
  devise_for :users

  resources :users do
    resources :memos, only:[:index, :create, :update, :destroy, :edit] 
    post 'restoration/:id' => 'memos#restoration'
  end

  resources :learns
  resources :studys
  


  # resources :trashcans, only:[:index, :create, :destroy]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "welcome#index"
end
