Avo::Auth0::Engine.routes.draw do
  get 'auth0/callback'
  get 'auth0/failure'
  match 'auth0/logout', as: :destroy_current_user_session, via: [:get, :delete]
end
