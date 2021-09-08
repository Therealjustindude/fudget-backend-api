Rails.application.routes.draw do
  post "/graphql", to: "graphql#execute"
  devise_for :users,
              controllers: {
                sessions: 'users/sessions',
                registrations: 'users/registrations'
              }
  get '/member-data', to: 'members#show'
end
