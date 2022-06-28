Rails.application.routes.draw do
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'
  post '/guest_login', to: 'user_sessions#guest_login'
  
  root 'static_pages#top'
  resources :users, only: %i[new create show edit update]
  resources :groups do
    member do
      get :join
      delete :withdrawal
    end
  end
  resources :password_resets, only: %i[new create edit update]
  resources :questions, only: %i[show] do
    member do
      get :categorize1
      get :categorize2
      get :show_reiwa2_otsu
      get :show_reiwa3_otsu
      get :show_houki_otsu
      get :show_kiso_otsu
      get :show_gijutsu_otsu
      get :show_reiwa2_kou
      get :show_reiwa3_kou
      get :show_houki_kou
      get :show_kiso_kou
      get :show_gijutsu_kou
    end
  end
  resources :results
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
