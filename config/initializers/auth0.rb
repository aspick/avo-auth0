AUTH0_CONFIG = Rails.application.config_for(:auth0)
require_dependency "omniauth"
require_dependency "omniauth-auth0"

Rails.application.config.middleware.use OmniAuth::Builder do
  provider(
    :auth0,
    AUTH0_CONFIG['auth0_client_id'],
    AUTH0_CONFIG['auth0_client_secret'],
    AUTH0_CONFIG['auth0_domain'],
    callback_path: '/auth/auth0/callback',
    authorize_params: {
      scope: 'openid email profile'
    },
    path_prefix: '/foo/auth'
  )
end
