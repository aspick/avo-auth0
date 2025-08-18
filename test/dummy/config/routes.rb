Rails.application.routes.draw do
  root to: proc { [200, {}, ['Test App Home']] }
  mount Avo::Auth0::Engine, at: '/auth'
end
