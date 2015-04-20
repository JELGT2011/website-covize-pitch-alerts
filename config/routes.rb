Rails.application.routes.draw do

  resources :users

  devise_for :admins

  resources :pitch_events

  root 'pitch_events#index'

  scope '/api' do

    scope 'pitch_events' do
      get '/' => 'pitch_events#index', defaults: { format: :json }
    end

    scope 'users' do
      get '/' => 'users#index', defaults: { format: :json }
      post '/' => 'users#create', defaults: { format: :json }
    end

  end

end
