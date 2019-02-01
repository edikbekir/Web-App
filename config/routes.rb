Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users
  root 'welcome#index'
  resources :console
  resources :events
  get 'write_bssid', to: 'events#write_bssid', param: :bssid
  get 'past_events', to: 'events#past_events'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
