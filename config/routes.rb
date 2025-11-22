Rails.application.routes.draw do
  # USERS
  resources :users, only: [:show, :update] do
    get :progress, on: :member

    # /users/:user_id/user_words
    resources :user_words, only: [:index, :create, :update]
  end

  # COURSES
  resources :courses, only: [:index, :show] do
    get :words, to: "courses#words"
  end

  # WORDS
  resources :words, only: [:show] do
    get :audios, to: "words#audios"
    get :video, on: :member
  end

  # WORD AUDIOS
  resources :word_audios, only: [:show, :create]

  # PRONUNCIATION ATTEMPTS
  resources :pronunciation_attempts, only: [:index, :create]

  resources :word_videos, only: [:create]
  get "/words/:word_id/videos", to: "word_videos#index_for_word"


end

