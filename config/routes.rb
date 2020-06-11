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
    root to: 'parents#show'
    get '/search' => 'search#search'
    resource :parents, only: [:show]
    resources :students, only: [:show] do
      resources :test_scores, only: [:show,:index]
      resources :test_ranges, only: [:show, :index]
      resources :diaries, only: [:index, :show]
      resources :score_reports, only:[:index]
      resource :follow_requests, only:[:create, :destroy]
    end
  end

  root to: 'student/homes#top'
  get '/about' => 'student/homes#about'

  namespace :student do
    root to: 'homes#top'
    get '/about' => 'homes#about'
    get '/search' => 'search#search'
    post 'follow/:id' => 'relationships#follow', as: 'follow'
    post 'unfollow/:id' => 'relationships#unfollow', as: 'unfollow'
    resources :students, only: [:show, :edit, :update] do
      resources :diaries, only: [:show, :edit, :update, :index, :create, :new] do
        resource :favorites, only:[:create, :destroy]
      end
      get '/followers' => 'relationships#follower', as: 'follower'
      get '/followeds' => 'relationships#followed', as: 'followed'
      resources :test_scores, only:[:show, :edit, :update, :index, :create, :new]
      resources :test_ranges, only:[:show, :edit, :update, :index, :create, :new]
      resources :score_reports, only:[:show, :edit, :update, :index, :create]
      resources :parent_follows, only:[:destroy, :show, :index]
      post '/follow_requests/:id' => 'follow_requests#allow', as: 'allow'
      resources :follow_requests, only:[:index, :show, :destroy]
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
