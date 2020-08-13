Rails.application.routes.draw do
  get 'users/ranking'
  get 'questions/new'
  get 'questions/edit'
  root 'homes#top'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  resources :questions, except: %i(show) do
    collection do
      get :search
      get :learning
    end
  end

  get 'users/ranking', to: 'users#ranking'
end
