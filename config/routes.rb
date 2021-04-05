Rails.application.routes.draw do
  root 'issues#index'

  get '/issues/sort', to: 'issues#index'
end
