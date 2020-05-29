Rails.application.routes.draw do


  devise_for :parents, controllers: {
    sessions: 'parent/sessions',
    passwords: 'parent/passwords',
    registrations: 'parent/registrations'
  }
  devise_for :students, controllers: {
    sessions: 'student/sessions',
    passwords: 'student/passwords',
    registrations: 'student/registrations'
  }

  namespace :parent do
    resources :parents, only: [:show]
    resources :students, only: [:show]
    resources :test_scores, only: [:show]
    resources :test_ranges, only: [:show, :index]
    resources :diaries, only: [:index, :show]
  end

  namespace :student do
  root to: 'homes#top'
  get '/about' => 'homes#about'
  resources :students, only: [:show, :edit, :update] do
  resources :diaries, only: [:show, :edit, :update, :index, :create, :new]
  resources :test_scores, only:[:show, :edit, :update, :index, :create, :new]
  resources :test_ranges, only:[:show, :edit, :update, :index, :create, :new]
  resources :score_reports, only:[:show, :edit, :update, :index, :create]
  end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
