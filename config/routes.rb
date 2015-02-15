Rails.application.routes.draw do
  
  resources :pitch_events

  root 'pitch_events#index'

  scope '/api' do
    scope 'pitch_events' do
      get '/' => 'pitch_events#index', defaults: { format: :json }
    end
  end
  
end
