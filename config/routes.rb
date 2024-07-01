Rails.application.routes.draw do
  # API namespace
  namespace :api do
    namespace :v1 do
      devise_for :users, path: '', path_names: {
        sign_in:  'login',
        sign_out: 'logout',
        registration: 'signup'
      },
      controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'
      }

      resources :users
    end
  end
end
