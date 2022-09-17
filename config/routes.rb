Rails.application.routes.draw do
  devise_for :users

  resources :users, only:['show'] do 
    resources :learning_items, only:[:index, :create, :destroy, :new]
  end

  resources :memos, only:[:index, :create, :update, :destroy, :edit] 

  # resources :trashcans, only:[:index, :create, :destroy]

  post 'restoration/:id' => 'memos#restoration'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "welcome#index"
end
