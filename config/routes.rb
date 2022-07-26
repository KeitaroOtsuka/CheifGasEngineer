Rails.application.routes.draw do
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'
  post '/guest_login', to: 'user_sessions#guest_login'
  
  root 'static_pages#top'
  resources :users, only: %i[new create show edit update]
  resources :groups do
    collection do
      get :search
    end
    member do
      get :join
      delete :withdrawal
      delete :withdrawal_member
    end
  end
  resources :password_resets, only: %i[new create edit update]
  resources :year_questions, only: %i[index]
  resources :category_questions, only: %i[index]
  resources :results, only: [:index, :show, :create]
  resources :contacts, only: [:new, :create]
  resources :question_papers, only: [:update]
  resources :papers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
