Rails.application.routes.draw do
  devise_for :users
  root to: "workouts#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :workouts do
    resources :workout_exercises, only: [:create]
    #post 'favorite_workout_exercise', to: 'workout_exercises#favorite_workout_exercise', as: 'my_bloodtests'
    resources :favorites, only: [:create]
  end
  resources :exercises, only: [:index, :create, :destroy]
  resources :workout_exercises, only: [:destroy]
  resources :favorites, only: [:index, :show, :destroy]
end
